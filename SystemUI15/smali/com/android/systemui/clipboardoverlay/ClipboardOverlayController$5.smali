.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v6, -0x3ec00000    # -12.0f

    invoke-static {v5, v6}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v5

    float-to-int v5, v5

    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v7, v6}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v7, v6}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v6}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v7, v6}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v6}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    sget-object v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
