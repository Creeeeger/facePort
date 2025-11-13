.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-boolean v0, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1, v0, v2, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iput-boolean v2, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setMinimized(Z)V

    sget-object p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$9;->$SwitchMap$com$android$systemui$clipboardoverlay$ClipboardModel$Type:[I

    throw v1
.end method
