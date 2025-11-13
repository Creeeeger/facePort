.class public Lcom/android/systemui/edgelighting/effect/view/MorphView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsToastView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCodeText:Landroid/widget/TextView;

.field public final mExpandButton:Landroid/widget/ImageView;

.field public final mIconRootLayout:Landroid/widget/LinearLayout;

.field public mIsGrayScaled:Z

.field public mIsSmallIcon:Z

.field public mIsUsingAppIcon:Z

.field public final mMainText:Landroid/widget/TextView;

.field public final mNotiIcon:Landroid/widget/ImageView;

.field public final mNotiIconBg:Landroid/widget/LinearLayout;

.field public mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

.field public mShouldShowButton:Z

.field public final mSmallIcon:Landroid/widget/ImageView;

.field public final mSubText:Landroid/widget/TextView;

.field public final mTextRootLayout:Landroid/widget/LinearLayout;

.field public final mToastBlurLayout:Landroid/widget/LinearLayout;

.field public final mToastRootLayout:Landroid/widget/LinearLayout;

.field public final mTouchRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d0216

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0d44

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0d40

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastBlurLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0d42

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a07f1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0d3f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0d45

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0d47

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0d48

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    const p1, 0x7f0a0d46

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    const p1, 0x7f0a042c

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0e07

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final disappear()V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    if-eqz v1, :cond_0

    const-string p0, "MorphView"

    const-string v0, "Morph animation is running. So ignore hide action."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final hide()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    if-eqz v0, :cond_0

    const-string p0, "MorphView"

    const-string v0, "Morph animation is running. So ignore hide action."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->isEmptyTickerText()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismissToastPopup()V

    :cond_1
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v2, -0x3c380000    # -400.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;F)V

    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x42960000    # 75.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const v2, 0x3f4ed917    # 0.808f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;Lcom/android/internal/dynamicanimation/animation/SpringAnimation;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final initialize()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071730

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    :cond_4
    const v3, 0x7f071736

    const v4, 0x7f071737

    if-lez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v1, v0

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsUsingAppIcon:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07172c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_6
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    goto :goto_3

    :cond_7
    move v5, v2

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v2, v2, v5, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0709c0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget v8, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    mul-int/2addr v6, v7

    sub-int/2addr v8, v6

    sub-int/2addr v8, v5

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_9

    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    int-to-double v5, v5

    const-wide v8, 0x3fe3333333333333L    # 0.6

    :goto_4
    mul-double/2addr v5, v8

    double-to-int v8, v5

    goto :goto_5

    :cond_9
    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07138c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    if-le v5, v6, :cond_a

    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    int-to-double v5, v5

    const-wide v8, 0x3fe6666666666666L    # 0.7

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0709bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    mul-int/2addr v5, v7

    sub-int v8, v6, v5

    :goto_5
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    iput v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07172f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v0

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v2, v3, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastBlurLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060063

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/16 v4, 0x20

    if-ne v2, v4, :cond_b

    const/16 v2, 0x7c

    goto :goto_6

    :cond_b
    const/16 v2, 0x72

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070748

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071735

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->reset()V

    return-void
.end method

.method public final isEmptyTickerText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final reset()V
    .locals 1

    const/high16 v0, -0x3c380000    # -400.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->setAlpha(F)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastBlurLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastBlurLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;F)V

    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x42960000    # 75.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const v2, 0x3f4ed917    # 0.808f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;Lcom/android/internal/dynamicanimation/animation/SpringAnimation;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showExpandButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mShouldShowButton:Z

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mShouldShowButton:Z

    :cond_1
    return-void
.end method

.method public final updateMargin(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07164c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07173b

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/2addr v0, p1

    goto :goto_2

    :cond_1
    if-le v0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_4

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071735

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    return-void
.end method
