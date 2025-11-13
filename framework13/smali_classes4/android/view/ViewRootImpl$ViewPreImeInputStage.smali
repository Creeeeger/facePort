.class final Landroid/view/ViewRootImpl$ViewPreImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPreImeInputStage"
.end annotation


# instance fields
.field private blacklist mIsBackKeyDuringDrag:Z

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .line 7595
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7596
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 7592
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mIsBackKeyDuringDrag:Z

    .line 7597
    return-void
.end method

.method private greylist-max-o processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7608
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 7611
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDesktopMode(Landroid/view/ViewRootImpl;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 7612
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 7613
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 7614
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Back key during drag in dex. Cancel drag and drop."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7615
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mIsBackKeyDuringDrag:Z

    .line 7616
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->cancelDragAndDrop()V

    .line 7618
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mIsBackKeyDuringDrag:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 7619
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 7620
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mIsBackKeyDuringDrag:Z

    .line 7622
    :cond_1
    return v3

    .line 7627
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7628
    return v3

    .line 7631
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7632
    return v3

    .line 7634
    :cond_4
    return v2
.end method


# virtual methods
.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7601
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 7602
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    .line 7604
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
