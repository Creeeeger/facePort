.class public final Lcom/android/wm/shell/windowdecor/FullscreenCaptionButtonPolicy;
.super Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;


# instance fields
.field public final mIsKeyguardShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;-><init>(Landroid/content/Context;Z)V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/FullscreenCaptionButtonPolicy;->mIsKeyguardShowing:Z

    return-void
.end method


# virtual methods
.method public final getMenuAnimation()Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisibleButtonCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final setupButtons(Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;Z)V
    .locals 1

    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p5}, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;->setupSplitButtonState(Landroid/view/ViewGroup;Z)V

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/FullscreenCaptionButtonPolicy;->mIsKeyguardShowing:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0a0480

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    const/4 p5, 0x0

    invoke-virtual {p0, p5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const p5, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p5}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;->setAllButtonListenersAndColor(Landroid/view/ViewGroup;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;)V

    return-void
.end method
