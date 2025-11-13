.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$2;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$2;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardCallbacks:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;->onShareButtonTapped()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
