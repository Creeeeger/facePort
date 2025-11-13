.class public Lcom/android/wm/shell/common/split/DividerPanelView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mColorTintList:Landroid/content/res/ColorStateList;

.field public mContainer:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "createLottieTask: asset="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerPanelView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    new-instance p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03a1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a09f3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a0ce5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0604be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v5, 0xcc

    invoke-static {v5, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070aac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wallpapertheme_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106038d

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060645

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060646

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    const-string v4, "**"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v5, Lcom/android/wm/shell/common/split/DividerPanelView$3;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/common/split/DividerPanelView$3;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "splitview_divider_option_icon_rotating_layout.json"

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;->createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const-string/jumbo v0, "splitview_divider_option_icon_switching.json"

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;->createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const-string/jumbo v0, "splitview_divider_option_icon_add_apppair.json"

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerPanelView;->createLottieTask(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method
