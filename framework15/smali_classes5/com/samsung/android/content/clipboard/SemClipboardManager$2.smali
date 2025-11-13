.class Lcom/samsung/android/content/clipboard/SemClipboardManager$2;
.super Landroid/os/Handler;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-$$Nest$mnotifyEvent(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Message;)V

    return-void
.end method
