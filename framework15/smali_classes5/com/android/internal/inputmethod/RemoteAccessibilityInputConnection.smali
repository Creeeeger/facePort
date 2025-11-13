.class public final Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
.super Ljava/lang/Object;
.source "RemoteAccessibilityInputConnection.java"


# static fields
.field private static final blacklist MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteA11yInputConnection"


# instance fields
.field private final blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field blacklist mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->create(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->cloneWithSessionId(I)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    iget-object v0, p1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->clearMetaKeyStates(I)V

    return-void
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public blacklist deleteSurroundingText(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->deleteSurroundingText(II)V

    return-void
.end method

.method public blacklist getCursorCapsMode(I)I
    .locals 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteA11yInputConnection"

    const-string/jumbo v3, "getCursorCapsMode()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I

    move-result v1

    return v1
.end method

.method public blacklist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteA11yInputConnection"

    const-string/jumbo v3, "getSurroundingText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/SurroundingText;

    return-object v1
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z

    move-result v0

    return v0
.end method

.method public blacklist performContextMenuAction(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->performContextMenuAction(I)V

    return-void
.end method

.method public blacklist performEditorAction(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->performEditorAction(I)V

    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public blacklist setSelection(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->setSelection(II)V

    return-void
.end method
