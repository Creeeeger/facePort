.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

.field public final synthetic f$1:Landroid/content/ClipDescription;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;Landroid/content/ClipDescription;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ClipDescription;

    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ClipDescription;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardListener;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->showCopyToast(Landroid/content/ClipDescription;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ClipboardListener"

    const-string v1, "showCopyToast exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
