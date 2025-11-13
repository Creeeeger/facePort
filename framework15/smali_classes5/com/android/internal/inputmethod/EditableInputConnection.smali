.class public final Lcom/android/internal/inputmethod/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/DumpableInputConnection;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private blacklist mBatchEditNesting:I

.field private final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$1(Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$0(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist closeConnection()V
    .locals 1

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    const-wide v5, 0x10500000003L

    invoke-virtual {p1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getCursorCapsMode(I)I

    move-result v3

    const-wide v4, 0x10500000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist endBatchEdit()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    return-void
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 2

    instance-of v0, p1, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingSelectGesture(Landroid/view/inputmethod/SelectGesture;)I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingSelectRangeGesture(Landroid/view/inputmethod/SelectRangeGesture;)I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingDeleteGesture(Landroid/view/inputmethod/DeleteGesture;)I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingDeleteRangeGesture(Landroid/view/inputmethod/DeleteRangeGesture;)I

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/view/inputmethod/InsertGesture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/InsertGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingInsertGesture(Landroid/view/inputmethod/InsertGesture;)I

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroid/view/inputmethod/RemoveSpaceGesture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingRemoveSpaceGesture(Landroid/view/inputmethod/RemoveSpaceGesture;)I

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Landroid/view/inputmethod/JoinOrSplitGesture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingJoinOrSplitGesture(Landroid/view/inputmethod/JoinOrSplitGesture;)I

    move-result v0

    goto :goto_0

    :cond_6
    instance-of v0, p1, Landroid/view/inputmethod/InsertModeGesture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/InsertModeGesture;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHandwritingInsertModeGesture(Landroid/view/inputmethod/InsertModeGesture;)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    :goto_0
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    new-instance v1, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, v0}, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performSpellCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onPerformSpellCheck()V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z

    move-result v0

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 7

    const/4 v0, 0x3

    const/16 v1, 0x7c

    const/16 v2, 0x7f

    and-int/lit8 v3, p1, -0x80

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_1

    return v4

    :cond_1
    iget-object v4, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    iget-object v4, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    and-int/lit8 v5, p1, 0x3

    and-int/lit8 v6, p1, 0x7c

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->onRequestCursorUpdatesInternal(II)V

    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public whitelist requestCursorUpdates(II)Z
    .locals 1

    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
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

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->getTextBoundsInfo(Landroid/graphics/RectF;)Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    new-instance v2, Landroid/view/inputmethod/TextBoundsInfoResult;

    invoke-direct {v2, v1, v0}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(ILandroid/view/inputmethod/TextBoundsInfo;)V

    new-instance v3, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3, v2}, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeConsumesInput(Z)V

    const/4 v0, 0x1

    return v0
.end method
