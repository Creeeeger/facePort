.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissButtonTapped()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    sget-object v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    return-void
.end method

.method public final onDismissComplete()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->hideImmediate()V

    return-void
.end method

.method public final onInteraction()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onMinimizedViewTapped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateFromMinimized()V

    return-void
.end method

.method public final onPreviewTapped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnPreviewTapped:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1;

    return-void
.end method

.method public final onRemoteCopyButtonTapped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnRemoteCopyTapped:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1;

    return-void
.end method

.method public final onShareButtonTapped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSwipeDismissInitiated(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    sget-object v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    return-void
.end method
