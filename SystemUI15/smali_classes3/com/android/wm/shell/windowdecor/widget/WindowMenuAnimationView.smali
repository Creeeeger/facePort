.class public Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsNightMode:Z

.field public mIsTaskFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsTaskFocused:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f77

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f070f7c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070f7b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    const v2, 0x7f08101a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    sub-int v4, v0, p1

    move-object v1, v7

    move v3, v0

    move v5, v0

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    add-int/2addr p1, v0

    invoke-virtual {v7, v3, p1}, Landroid/graphics/drawable/RippleDrawable;->setLayerInsetBottom(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result p1

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    invoke-virtual {v7, v3, p1}, Landroid/graphics/drawable/RippleDrawable;->setLayerInsetStart(II)V

    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    const p2, 0x7f020036

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->applyIconColor()V

    return-void
.end method


# virtual methods
.method public final applyIconColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsNightMode:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->getButtonTintColor(Landroid/content/Context;ZZ)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsTaskFocused:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x9a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$1;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$1;-><init>(Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    return-void
.end method

.method public final createLottieTask(Ljava/lang/String;)V
    .locals 2

    const-string v0, "createLottieTask: asset="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMenuAnimationView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    new-instance p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateNightMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsNightMode:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsNightMode:Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    if-eq p1, v0, :cond_1

    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsNightMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    and-int/lit8 v0, v0, 0x30

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    or-int/2addr v0, v1

    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mContext:Landroid/content/Context;

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->applyIconColor()V

    :cond_2
    return-void
.end method
