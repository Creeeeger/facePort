.class Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexDoubleTapListener"
.end annotation


# instance fields
.field private blacklist mIsNotPrimaryButtonClicked:Z

.field final synthetic blacklist this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    .line 2401
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2402
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method


# virtual methods
.method public whitelist onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2411
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2416
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmIsDexEnabled(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmDecor(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fputmIsMovingTaskEnabled(Lcom/android/internal/widget/DecorCaptionView;Z)V

    .line 2419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2425
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmClickTarget(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmCanMaximizeVisibilityOnDeX(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->-$$Nest$fgetmOpacityChangeModeEnabled(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2427
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->toggleWindow()V

    goto :goto_1

    .line 2421
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 2422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    .line 2432
    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2406
    const/4 v0, 0x0

    return v0
.end method
