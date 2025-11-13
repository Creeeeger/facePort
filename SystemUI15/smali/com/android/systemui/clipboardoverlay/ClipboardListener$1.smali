.class public final Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipSource()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    const-string v3, "ro.boot.qemu"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v2, "com.android.shell"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    const-string p0, "ClipboardListener"

    const-string v0, "Clipboard overlay suppressed."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    iget-object v2, v2, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getClassificationStatus()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_8

    iget-object v1, v2, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    if-eqz v1, :cond_7

    move v4, v3

    :cond_7
    xor-int/2addr v4, v3

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_3
    if-eqz v4, :cond_9

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :cond_a
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;Landroid/content/ClipDescription;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
