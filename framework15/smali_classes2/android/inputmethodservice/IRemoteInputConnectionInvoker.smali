.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.super Ljava/lang/Object;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;,
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;,
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
    }
.end annotation


# instance fields
.field private blacklist mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

.field private final blacklist mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field private final blacklist mSessionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput p2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mSessionId:I

    return-void
.end method

.method public static blacklist create(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-object v0
.end method

.method private blacklist getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    return-object v0

    :cond_0
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;-><init>(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)V

    iput-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    return-object v0
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$0(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$1(Ljava/util/function/Consumer;)V
    .locals 2

    new-instance v0, Landroid/view/inputmethod/TextBoundsInfoResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Sender;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object v0

    return-object v0
.end method

.method public blacklist beginBatchEdit()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist clearMetaKeyStates(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist cloneWithSessionId(I)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .locals 2

    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-direct {v0, v1, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-object v0
.end method

.method public blacklist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputContentInfo;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .locals 2

    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist endBatchEdit()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist finishComposingText()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            "I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/ExtractedText;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist performContextMenuAction(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performEditorAction(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;

    invoke-direct {v1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    move-object v0, v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/CancellationSignalBeamer$Sender;->beamScopeIfNeeded(Landroid/view/inputmethod/HandwritingGesture;)Landroid/os/CancellationSignalBeamer$Sender$MustClose;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v3

    invoke-static {p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/os/CancellationSignalBeamer$Sender$MustClose;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/os/CancellationSignalBeamer$Sender$MustClose;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    new-instance v2, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performSpellCheck()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist previewHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-static {p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method public blacklist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;

    invoke-direct {v0, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingRegion(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setImeConsumesInput(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSelection(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
