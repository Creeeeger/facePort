.class public final Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;->this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;->this$0:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    const-string/jumbo v0, "semclipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    invoke-virtual {p1, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    :goto_0
    return-void
.end method
