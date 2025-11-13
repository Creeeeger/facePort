.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mKeyboardVisible:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mKeyboardVisible:Z

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOnKeyboardChangeListener:Ljava/util/function/BiConsumer;

    iget p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
