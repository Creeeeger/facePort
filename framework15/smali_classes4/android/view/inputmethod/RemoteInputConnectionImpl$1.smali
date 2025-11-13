.class Landroid/view/inputmethod/RemoteInputConnectionImpl$1;
.super Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$3mhKHtk_g_9EEQwcxzmqObRs10s(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$clearMetaKeyStates$10(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BhrG0JqFo30bEfXozs3qs2WAo8g(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$performEditorAction$6(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KmheW7rzJC5w0l5QNkFmlmdSXPQ(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$deleteSurroundingText$4(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Mg3pt59RqjLud-5e4Ud3_FIstiM(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$sendKeyEvent$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b51gX3RRgWNBVYCcVWB-Tm7udJw(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$setSelection$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mFHuHl3Rjv4gPSnQARECkdT9SuQ(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mkFDahAR9XR6GDIWTy7xqO4hqpY(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$performContextMenuAction$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sItCemcWTZ6fB0FwT6P0i8Z_-Qg(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getCursorCapsMode$8(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$x_f5W60SvD2VREVacz848EArq7M(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getSurroundingText$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$clearMetaKeyStates$10(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$deleteSurroundingText$4(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$getCursorCapsMode$8(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 4

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v3, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getSurroundingText$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 5

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    if-gez p3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_0
    const-string v3, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static synthetic blacklist lambda$getSurroundingText$3(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$performContextMenuAction$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$performEditorAction$6(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$sendKeyEvent$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setSelection$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v2, "clearMetaKeyStatesFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 8

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v7, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string v1, "commitTextFromA11yIme"

    invoke-static {v0, v1, v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v2, "deleteSurroundingTextFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "getCursorCapsModeFromA11yIme"

    invoke-static {v0, v3, p3, v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 8

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v7, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;-><init>(III)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "getSurroundingTextFromA11yIme"

    invoke-static {v0, v2, p5, v7, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v2, "performContextMenuActionFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v2, "performEditorActionFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo v2, "sendKeyEventFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v2, "setSelectionFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
