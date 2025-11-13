.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# instance fields
.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;

.field private blacklist mWasVisible:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 91
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditText;->mWasVisible:Z

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .line 161
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 162
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 185
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getDefaultEditable()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .line 114
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFreezesText()Z
    .locals 1

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getText()Landroid/text/Editable;
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 121
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    return-object v1

    .line 124
    :cond_0
    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_1

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    return-object v1

    .line 127
    :cond_1
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 128
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    return-object v1
.end method

.method public bridge synthetic whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 217
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 218
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroid/widget/EditText;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/EditText;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/widget/EditText;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->semAddEditText(Landroid/widget/EditText;)V

    .line 226
    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 234
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Landroid/widget/EditText;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/EditText;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 238
    :cond_0
    iget-object v0, p0, Landroid/widget/EditText;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->semRemoveEditText(Landroid/widget/EditText;)V

    .line 242
    :cond_1
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHandwritingArea(Landroid/graphics/Rect;)V

    .line 192
    return-void
.end method

.method public whitelist selectAll()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 155
    return-void
.end method

.method public whitelist semHideCursorControllers()V
    .locals 0

    .line 207
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 208
    return-void
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .line 176
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 181
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist setFrame(IIII)Z
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    .line 252
    .local v0, "ret":Z
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {p0}, Landroid/widget/EditText;->isVisibleToUser()Z

    move-result v1

    .line 254
    .local v1, "isVisible":Z
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 256
    .local v2, "rootView":Landroid/view/ViewRootImpl;
    iget-boolean v3, p0, Landroid/widget/EditText;->mWasVisible:Z

    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->updateEditTextVisible()V

    .line 259
    :cond_0
    iput-boolean v1, p0, Landroid/widget/EditText;->mWasVisible:Z

    .line 261
    .end local v1    # "isVisible":Z
    .end local v2    # "rootView":Landroid/view/ViewRootImpl;
    :cond_1
    return v0
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .line 147
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 148
    return-void
.end method

.method public whitelist setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .line 140
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 141
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 133
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 134
    return-void
.end method

.method protected greylist-max-o supportsAutoSizeText()Z
    .locals 1

    .line 197
    const/4 v0, 0x0

    return v0
.end method
