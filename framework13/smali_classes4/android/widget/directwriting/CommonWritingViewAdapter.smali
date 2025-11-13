.class public Landroid/widget/directwriting/CommonWritingViewAdapter;
.super Landroid/widget/directwriting/WritingView;
.source "CommonWritingViewAdapter.java"


# instance fields
.field blacklist layout:Landroid/widget/directwriting/EditTextLayout;

.field blacklist view:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 33
    invoke-direct {p0}, Landroid/widget/directwriting/WritingView;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 28
    invoke-direct {p0}, Landroid/widget/directwriting/WritingView;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    .line 30
    iput-object p2, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/widget/directwriting/EditTextLayout;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "layout"    # Landroid/widget/directwriting/EditTextLayout;

    .line 22
    invoke-direct {p0}, Landroid/widget/directwriting/WritingView;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    .line 24
    iput-object p2, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    .line 25
    iput-object p3, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist getBaseline()I
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getBaseLine()I

    move-result v0

    return v0
.end method

.method public blacklist getBottom()I
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGlobalVisibleRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 289
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 290
    return-void
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getImeOptions()I
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public blacklist getInputType()I
    .locals 1

    .line 274
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getInputType()I

    move-result v0

    return v0
.end method

.method public blacklist getLeft()I
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public blacklist getLineAscent(I)I
    .locals 1
    .param p1, "line"    # I

    .line 249
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineAscent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineBaseline(I)I
    .locals 1
    .param p1, "line"    # I

    .line 244
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineBaseLine(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .line 234
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    .line 254
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineDescent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .line 224
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineEnd(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineForOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 214
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineHeight()I
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getLineMax(I)F
    .locals 1
    .param p1, "i"    # I

    .line 209
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineMax(I)F

    move-result v0

    return v0
.end method

.method public blacklist getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    .line 219
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .line 229
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineVisibleEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .line 239
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getLineVisibleEnd(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLocationOnScreen([I)V
    .locals 1
    .param p1, "outLocation"    # [I

    .line 259
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 260
    return-void
.end method

.method public blacklist getOffsetForPosition(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 89
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    invoke-interface {v0, p2}, Landroid/widget/directwriting/EditTextLayout;->getLineAtCoordinate(F)I

    move-result v0

    .line 91
    .local v0, "line":I
    iget-object v1, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v1, v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 92
    .local v1, "offset":I
    return v1
.end method

.method public blacklist getPaddingBottom()I
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingEnd()I
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingLeft()I
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingStart()I
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingTop()I
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public blacklist getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    .line 199
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getParagraphDirection(I)I

    move-result v0

    return v0
.end method

.method public blacklist getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 204
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method public blacklist getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getPrimaryImeOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRight()I
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public blacklist getScrollX()I
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public blacklist getScrollY()I
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public blacklist getSelectionEnd()I
    .locals 3

    .line 83
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 84
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    return v1
.end method

.method public blacklist getSelectionStart()I
    .locals 3

    .line 76
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 77
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    return v1
.end method

.method public blacklist getSkipHoverCursorChange()Z
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->getSkipHoverCursorChange()Z

    move-result v0

    return v0
.end method

.method public blacklist getText()Landroid/text/Editable;
    .locals 4

    .line 98
    :try_start_0
    const-string v0, ""

    .line 99
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    .line 100
    .local v1, "mEditableFactory":Landroid/text/Editable$Factory;
    invoke-virtual {v1, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    .line 101
    .local v2, "t":Landroid/text/Editable;
    move-object v0, v2

    .line 102
    move-object v3, v0

    check-cast v3, Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 103
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "mEditableFactory":Landroid/text/Editable$Factory;
    .end local v2    # "t":Landroid/text/Editable;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sbeeDebug"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getTop()I
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 39
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getVisibility()I
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist hasFocus()Z
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist hasSelection()Z
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->hasSelection()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isCursorVisible()Z
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0}, Landroid/widget/directwriting/EditTextLayout;->isCursorVisible()Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isFocusable()Z
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToUser()Z
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public blacklist length()I
    .locals 3

    .line 113
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 114
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    return v1
.end method

.method public blacklist onEditorAction(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .line 71
    return-void
.end method

.method public blacklist requestFocus()Z
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist semGetTranslatedRectOnScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 294
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->semGetTranslatedRectOnScreen(Landroid/graphics/Rect;)V

    .line 295
    return-void
.end method

.method public blacklist setDWSelectionFlag(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 329
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->setDWSelectionFlag(Z)V

    .line 330
    return-void
.end method

.method public blacklist setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 339
    iput-object p1, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    .line 340
    return-void
.end method

.method public blacklist setSelection(I)V
    .locals 1
    .param p1, "selection"    # I

    .line 50
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 51
    return-void
.end method

.method public blacklist setSkipHoverCursorChange(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 324
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->layout:Landroid/widget/directwriting/EditTextLayout;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/EditTextLayout;->setSkipHoverCursorChange(Z)V

    .line 325
    return-void
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 44
    iget-object v0, p0, Landroid/widget/directwriting/CommonWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 45
    return-void
.end method
