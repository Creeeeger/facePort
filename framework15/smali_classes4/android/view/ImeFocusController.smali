.class public final Landroid/view/ImeFocusController;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ImeFocusController"


# instance fields
.field private blacklist mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

.field private blacklist mHasImeFocus:Z

.field private final blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/ImeFocusController;->DEBUG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    iput-object p1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-void
.end method

.method private blacklist getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .locals 2

    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    :cond_0
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    return-object v0
.end method

.method private static blacklist isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist printLog(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasWindowFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHasImeFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeFocusController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method blacklist hasImeFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    return v0
.end method

.method blacklist onMovedToDisplay()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    return-void
.end method

.method blacklist onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 3

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    :goto_0
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " softInputMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeFocusController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_3
    :goto_1
    const-string/jumbo v0, "onPostWindowFocus: skipped"

    invoke-direct {p0, v0, p2}, Landroid/view/ImeFocusController;->printLog(Ljava/lang/String;Z)V

    return-void
.end method

.method blacklist onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "onPreWindowFocus: skipped"

    invoke-direct {p0, v0, p1}, Landroid/view/ImeFocusController;->printLog(Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onWindowLostFocus(Landroid/view/ViewRootImpl;)V

    :cond_2
    :goto_1
    return-void
.end method

.method blacklist onProcessImeInputStage(Ljava/lang/Object;Landroid/view/InputEvent;Landroid/view/WindowManager$LayoutParams;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;)I
    .locals 3

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p2, p1, p4, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method blacklist onScheduledCheckFocus()V
    .locals 2

    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method blacklist onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v1, v2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    :goto_0
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method blacklist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, p1, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onViewFocusChanged(Landroid/view/View;Z)V

    return-void
.end method

.method blacklist onWindowDismissed()V
    .locals 2

    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->onWindowDismissed(Landroid/view/ViewRootImpl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    return-void
.end method
