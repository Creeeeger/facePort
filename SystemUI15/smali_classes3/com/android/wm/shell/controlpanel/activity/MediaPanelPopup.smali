.class public final Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIsNext:Z

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSeekTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mIsNext:Z

    return-void
.end method


# virtual methods
.method public final connectUIObject()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mIsNext:Z

    const v1, 0x7f0a0665

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0d020a

    invoke-static {v0, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const-string v2, "flex_panel_seek_media_popup_forward.json"

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0d020b

    invoke-static {v0, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const-string v2, "flex_panel_seek_media_popup_rewind.json"

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    const v1, 0x7f0a0adf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mSeekTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final fadeInAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0102ab

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setAppendLayoutParams()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070988

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mIsNext:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x35

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    return-void
.end method
