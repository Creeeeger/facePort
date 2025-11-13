.class public final Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;
.super Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;


# instance fields
.field public final mIsNightMode:Z

.field public mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;-><init>(Landroid/content/Context;Z)V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;->mIsNightMode:Z

    return-void
.end method


# virtual methods
.method public final getMenuAnimation()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;->mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;

    return-object p0
.end method

.method public final getVisibleButtonCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final setupButtons(Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;Z)V
    .locals 2

    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0879

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v0, p5}, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;->setupSplitButtonState(Landroid/view/ViewGroup;Z)V

    const p1, 0x7f0a024c

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    iget-boolean p5, p0, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;->mIsNightMode:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "mw_popup_option_btn_handle_header.json"

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->createLottieTask(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->updateNightMode(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;-><init>(Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;->mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;

    :goto_0
    const p0, 0x7f0a039c

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDivider;

    invoke-virtual {p0, p4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p5, :cond_3

    const p1, 0x3df5c28f    # 0.12f

    goto :goto_1

    :cond_3
    const p1, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v0, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;->setAllButtonListenersAndColor(Landroid/view/ViewGroup;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;)V

    return-void
.end method
