.class Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;
.super Landroid/os/Handler;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;Landroid/os/Looper;Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1751
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;->this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iput-object p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;->val$this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1753
    const-string v0, "SemHoverPopupWindow"

    const-string v1, "TouchablePopupContainer: ***** mContainerDismissHandler handleMessage *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;->this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v1, v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-$$Nest$fgetmPopup(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;->this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v1, v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-$$Nest$fgetmPopup(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1756
    const-string v1, "TouchablePopupContainer: mContainerDismissHandler handleMessage: Call dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;->this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1761
    :cond_0
    return-void
.end method
