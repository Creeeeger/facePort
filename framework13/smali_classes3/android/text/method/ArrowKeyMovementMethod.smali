.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final greylist-max-o LAST_TAP_DOWN:Ljava/lang/Object;

.field private static greylist-max-o sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# instance fields
.field private blacklist mIsSpanSet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    return-void
.end method

.method private static greylist-max-o getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I
    .locals 1
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 44
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 341
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 345
    :cond_0
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private static greylist-max-o getPageHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "widget"    # Landroid/widget/TextView;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static greylist-max-o isSelecting(Landroid/text/Spannable;)Z
    .locals 2
    .param p0, "buffer"    # Landroid/text/Spannable;

    .line 39
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    const/16 v1, 0x800

    .line 40
    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 39
    :goto_1
    return v0
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 173
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 178
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canSelectArbitrarily()Z
    .locals 1

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 105
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 106
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 109
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 226
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 58
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 63
    invoke-static {p2, v0, p5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v0

    return v0

    .line 70
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 325
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 326
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 76
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p2, v0}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 79
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected greylist-max-o leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 204
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 205
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 206
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 207
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 193
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 194
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 197
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 183
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 184
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 187
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 330
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 338
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 231
    const/4 v0, -0x1

    .line 232
    .local v0, "initialScrollX":I
    const/4 v1, -0x1

    .line 233
    .local v1, "initialScrollY":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 235
    .local v2, "action":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 236
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v0

    .line 237
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v1

    .line 240
    :cond_0
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v4

    .line 241
    .local v4, "wasTouchSelecting":Z
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v5

    .line 243
    .local v5, "handled":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    return v5

    .line 246
    :cond_1
    if-nez v2, :cond_3

    .line 248
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 249
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_2

    .line 250
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    move-result v6

    if-nez v6, :cond_2

    .line 251
    return v5

    .line 254
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 255
    .local v6, "offset":I
    sget-object v7, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v8, 0x22

    invoke-interface {p2, v7, v6, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 257
    iput-boolean v3, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    .line 263
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 264
    .end local v6    # "offset":I
    goto/16 :goto_0

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 266
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 267
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    iget-boolean v6, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    if-eqz v6, :cond_9

    .line 269
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 276
    .local v6, "startOffset":I
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 281
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    .line 282
    .local v7, "offset":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 283
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 282
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 284
    return v3

    .line 286
    .end local v6    # "startOffset":I
    .end local v7    # "offset":I
    :cond_4
    if-ne v2, v3, :cond_9

    .line 291
    if-ltz v1, :cond_5

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    if-ne v1, v6, :cond_6

    :cond_5
    if-ltz v0, :cond_7

    .line 292
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    if-eq v0, v6, :cond_7

    .line 293
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    .line 294
    return v3

    .line 297
    :cond_7
    if-eqz v4, :cond_8

    iget-boolean v6, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    if-eqz v6, :cond_8

    .line 299
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 300
    .local v7, "startOffset":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v8

    .line 301
    .local v8, "endOffset":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 302
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 301
    invoke-static {p2, v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 303
    invoke-interface {p2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 305
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/text/method/ArrowKeyMovementMethod;->mIsSpanSet:Z

    .line 309
    .end local v7    # "startOffset":I
    .end local v8    # "endOffset":I
    :cond_8
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 310
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 312
    return v3

    .line 315
    :cond_9
    :goto_0
    return v5
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 140
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    .line 141
    .local v1, "selecting":Z
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v2

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 142
    .local v2, "targetY":I
    const/4 v3, 0x0

    .line 144
    .local v3, "handled":Z
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 145
    .local v4, "previousSelectionEnd":I
    if-eqz v1, :cond_0

    .line 146
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 148
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 150
    :goto_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 151
    goto :goto_2

    .line 153
    :cond_1
    const/4 v3, 0x1

    .line 154
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-lt v5, v2, :cond_2

    .line 155
    nop

    .line 158
    .end local v4    # "previousSelectionEnd":I
    :goto_2
    return v3

    .line 157
    :cond_2
    goto :goto_0
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 115
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 116
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    .line 117
    .local v1, "selecting":Z
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v2

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 118
    .local v2, "targetY":I
    const/4 v3, 0x0

    .line 120
    .local v3, "handled":Z
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 121
    .local v4, "previousSelectionEnd":I
    if-eqz v1, :cond_0

    .line 122
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 124
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 126
    :goto_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 127
    goto :goto_2

    .line 129
    :cond_1
    const/4 v3, 0x1

    .line 130
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-gt v5, v2, :cond_2

    .line 131
    nop

    .line 134
    .end local v4    # "previousSelectionEnd":I
    :goto_2
    return v3

    .line 133
    :cond_2
    goto :goto_0
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 86
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p2, v0}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 89
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected greylist-max-o rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 213
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 214
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 215
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 216
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 163
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 168
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 96
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 99
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method
