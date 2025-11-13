.class public final Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/content/clipboard/SemClipboardEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;->this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "ScreenCaptureAction"

    const-string p2, "clip added. doScreenCaptureDone"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;->this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    const-string/jumbo p2, "semclipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    invoke-virtual {p1, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    :cond_0
    return-void
.end method

.method public final onFilterUpdated(I)V
    .locals 0

    return-void
.end method
