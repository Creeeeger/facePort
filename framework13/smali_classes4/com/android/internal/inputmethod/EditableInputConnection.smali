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
    .param p1, "textview"    # Landroid/widget/TextView;

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 58
    iput-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 2

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 75
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 76
    monitor-exit p0

    return v1

    .line 78
    :cond_0
    monitor-exit p0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 3
    .param p1, "states"    # I

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 119
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 121
    .local v1, "kl":Landroid/text/method/KeyListener;
    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 129
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist closeConnection()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    .line 107
    monitor-enter p0

    .line 108
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 135
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 147
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 197
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 201
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 202
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 204
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 270
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 271
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 272
    .local v2, "editableText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 281
    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    .line 282
    .local v5, "content":Landroid/text/Editable;
    if-eqz v5, :cond_0

    .line 283
    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 284
    .local v6, "start":I
    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 285
    .local v7, "end":I
    const-wide v8, 0x10500000003L

    invoke-virtual {p1, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 286
    const-wide v8, 0x10500000004L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 288
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_0
    const-wide v6, 0x10500000005L

    invoke-virtual {p0, v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getCursorCapsMode(I)I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 289
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 290
    return-void
.end method

.method public whitelist endBatchEdit()Z
    .locals 3

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 91
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 92
    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    monitor-exit p0

    return v1

    .line 94
    :cond_1
    monitor-exit p0

    .line 95
    return v1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 102
    return-void
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 64
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 171
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 173
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    .line 177
    :cond_0
    return-object v0

    .line 180
    .end local v0    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 163
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 164
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 165
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .line 156
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 191
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performSpellCheck()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onPerformSpellCheck()V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 4
    .param p1, "cursorUpdateMode"    # I

    .line 220
    const/16 v0, 0x1f

    .line 225
    .local v0, "knownFlagMask":I
    and-int/lit8 v1, p1, -0x20

    .line 226
    .local v1, "unknownFlags":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 231
    return v2

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 238
    return v2

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    .line 241
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 242
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->isInLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 256
    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist requestCursorUpdates(II)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 211
    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 1
    .param p1, "imeConsumesInput"    # Z

    .line 261
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    move-result v0

    return v0

    .line 264
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeConsumesInput(Z)V

    .line 265
    const/4 v0, 0x1

    return v0
.end method
