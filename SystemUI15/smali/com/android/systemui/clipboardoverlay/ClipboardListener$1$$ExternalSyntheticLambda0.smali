.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_TOAST_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mContext:Landroid/content/Context;

    const v1, 0x7f1303a0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ClipboardListener"

    const-string v1, "showCopiedToast exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
