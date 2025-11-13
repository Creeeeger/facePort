.class public Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;
.super Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;
.source "IDirectWritingServiceCallbackImpl.java"


# instance fields
.field private blacklist binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImm:Landroid/view/inputmethod/InputMethodManager;

.field private blacklist mWritingView:Landroid/widget/directwriting/WritingView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbinderCallback(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/DirectWritingBinderCallback;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbindEditInInner(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->bindEditInInner(FF)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallback$Stub;-><init>()V

    .line 27
    new-instance v0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;-><init>(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist bindEditInInner(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 196
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 197
    const-string v0, "bindEditInInner failed, binderCallback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/widget/directwriting/DirectWritingBinderCallback;->findTriggerEditText(FF)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 201
    .local v0, "writingView":Landroid/widget/directwriting/WritingView;
    if-nez v0, :cond_1

    .line 202
    const-string v2, "bindEditInInner not found"

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindEditInInner same edit text bind requested, skipped et="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindEditInInner edit text changed to et="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from editText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z

    .line 210
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    invoke-interface {v1, v0}, Landroid/widget/directwriting/DirectWritingBinderCallback;->onBoundedEditTextChanged(Landroid/widget/directwriting/WritingView;)V

    .line 212
    :goto_0
    return-void
.end method

.method private blacklist initImm()V
    .locals 2

    .line 113
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 116
    :cond_0
    return-void
.end method

.method private blacklist setDirectWritingFlag(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 551
    invoke-direct {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->initImm()V

    .line 552
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "IDirectWritingServiceCallbackImpl"

    invoke-static {v0, p1, v1}, Landroid/widget/directwriting/DirectWritingCompat;->setDirectWritingFlag(Landroid/view/inputmethod/InputMethodManager;ZLjava/lang/String;)V

    .line 553
    return-void
.end method


# virtual methods
.method public blacklist bindEditIn(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 190
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method

.method public blacklist getBaseLine()I
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 347
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getBaseline()I

    move-result v0

    return v0
.end method

.method public blacklist getBottom()I
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 329
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getCursorLocation(I)Landroid/graphics/PointF;
    .locals 10
    .param p1, "selectionStart"    # I

    .line 456
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 457
    .local v0, "location":Landroid/graphics/PointF;
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v1, :cond_0

    return-object v0

    .line 459
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 460
    .local v2, "viewLocation":[I
    invoke-virtual {v1, v2}, Landroid/widget/directwriting/WritingView;->getLocationOnScreen([I)V

    .line 462
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v1}, Landroid/widget/directwriting/WritingView;->getBaseline()I

    move-result v1

    .line 463
    .local v1, "baseline":I
    iget-object v3, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v3}, Landroid/widget/directwriting/WritingView;->getLineHeight()I

    move-result v3

    .line 464
    .local v3, "lineHeight":I
    iget-object v4, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v4, p1}, Landroid/widget/directwriting/WritingView;->getLineForOffset(I)I

    move-result v4

    .line 465
    .local v4, "line":I
    iget-object v5, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v5, p1}, Landroid/widget/directwriting/WritingView;->getPrimaryHorizontal(I)F

    move-result v5

    .line 466
    .local v5, "primaryHorizontal":F
    iget-object v6, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/directwriting/WritingView;->getLineAscent(I)I

    move-result v6

    int-to-float v6, v6

    .line 468
    .local v6, "lineAscent":F
    aget v7, v2, v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    iget-object v8, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v8}, Landroid/widget/directwriting/WritingView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v8}, Landroid/widget/directwriting/WritingView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 469
    .local v7, "x":F
    const/4 v8, 0x1

    aget v8, v2, v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v6

    mul-int v9, v3, v4

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v9}, Landroid/widget/directwriting/WritingView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 471
    .local v8, "y":F
    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 472
    return-object v0
.end method

.method public blacklist getEditText()Landroid/widget/directwriting/WritingView;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getImeOptions()I
    .locals 4

    .line 488
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 489
    const-string v0, "getImeOptions failed, editText is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getImeOptions()I

    move-result v0

    .line 493
    .local v0, "imeOption":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeOptions = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v0
.end method

.method public blacklist getInputType()I
    .locals 4

    .line 499
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 500
    const-string v0, "getInputType failed, editText is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getInputType()I

    move-result v0

    .line 504
    .local v0, "inputType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInputType = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return v0
.end method

.method public blacklist getLeft()I
    .locals 1

    .line 316
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getLeft()I

    move-result v0

    return v0
.end method

.method public blacklist getLineAscent(I)I
    .locals 1
    .param p1, "line"    # I

    .line 424
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 425
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineAscent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineBaseline(I)I
    .locals 1
    .param p1, "line"    # I

    .line 406
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 407
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .line 394
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineCount()I
    .locals 1

    .line 340
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 341
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    .line 430
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 431
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineDescent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .line 382
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineEnd(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineForOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 370
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineHeight()I
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 335
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getLineHeightByIndex(I)I
    .locals 2
    .param p1, "line"    # I

    .line 412
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getLineBottom(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLineMax(I)F
    .locals 1
    .param p1, "i"    # I

    .line 364
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 365
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineMax(I)F

    move-result v0

    return v0
.end method

.method public blacklist getLineMaxIncludePadding(I)I
    .locals 2
    .param p1, "line"    # I

    .line 418
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getLineMax(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    .line 376
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 377
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .line 388
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 389
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineVisibleEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .line 400
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 401
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getLineVisibleEnd(I)I

    move-result v0

    return v0
.end method

.method public blacklist getOffsetForPosition(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 250
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/widget/directwriting/WritingView;->getOffsetForPosition(FF)I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingBottom()I
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 299
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingEnd()I
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 305
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingStart()I
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingTop()I
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public blacklist getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    .line 352
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getParagraphDirection(I)I

    move-result v0

    return v0
.end method

.method public blacklist getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 358
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 359
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/directwriting/WritingView;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method public blacklist getPrivateImeOptions()Ljava/lang/String;
    .locals 4

    .line 477
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 478
    const-string v0, "getPrivateImeOptions failed, editText is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v0, ""

    return-object v0

    .line 481
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "privateImeOptions":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivateImeOptions ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-object v0
.end method

.method public blacklist getRight()I
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getRight()I

    move-result v0

    return v0
.end method

.method public blacklist getScrollY()I
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public blacklist getSelectionEnd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public blacklist getSelectionStart()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public blacklist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTextAreaRect(I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "line"    # I

    .line 436
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v2, :cond_0

    return-object v0

    .line 439
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 440
    .local v3, "viewLocation":[I
    invoke-virtual {v2, v3}, Landroid/widget/directwriting/WritingView;->getLocationOnScreen([I)V

    .line 442
    const/4 v2, 0x1

    aget v2, v3, v2

    iget-object v4, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v4}, Landroid/widget/directwriting/WritingView;->getBaseline()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    .line 443
    invoke-virtual {v4, v1}, Landroid/widget/directwriting/WritingView;->getLineAscent(I)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v4}, Landroid/widget/directwriting/WritingView;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    .line 444
    .local v2, "textAreaTop":I
    iget-object v4, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v4, v1}, Landroid/widget/directwriting/WritingView;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    .line 446
    .local v4, "primaryHorizontal":I
    aget v1, v3, v1

    add-int/2addr v1, v4

    iget-object v5, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v5}, Landroid/widget/directwriting/WritingView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v5}, Landroid/widget/directwriting/WritingView;->getScrollX()I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 447
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v1, p1}, Landroid/widget/directwriting/WritingView;->getLineTop(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 448
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 449
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v1, p1}, Landroid/widget/directwriting/WritingView;->getLineBottom(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 451
    return-object v0
.end method

.method public blacklist getTop()I
    .locals 1

    .line 322
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getTop()I

    move-result v0

    return v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 109
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 274
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist isHoverIconShowing()Z
    .locals 1

    .line 574
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingBinderCallback;->isHoverIconShowing()Z

    move-result v0

    return v0
.end method

.method public blacklist length()I
    .locals 1

    .line 262
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->length()I

    move-result v0

    return v0
.end method

.method public blacklist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 517
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 518
    const-string/jumbo v0, "onAppPrivateCommand failed, editText is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 522
    :cond_0
    invoke-direct {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->initImm()V

    .line 523
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 524
    iget-object v2, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v2}, Landroid/widget/directwriting/WritingView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 525
    if-eqz p2, :cond_1

    .line 526
    const-string/jumbo v0, "showKeyboard"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 527
    .local v0, "showKeyboard":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppPrivateCommand showKeyboard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    if-eqz v0, :cond_1

    .line 529
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setDirectWritingFlag(Z)V

    .line 530
    iget-object v2, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v3}, Landroid/widget/directwriting/WritingView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 531
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setDirectWritingFlag(Z)V

    .line 535
    .end local v0    # "showKeyboard":Z
    :cond_1
    return-void
.end method

.method public blacklist onEditorAction(I)V
    .locals 2
    .param p1, "actionCode"    # I

    .line 510
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 511
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 512
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    return-void
.end method

.method public blacklist onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExtraCommand action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWL]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public blacklist onFinishRecognition()V
    .locals 2

    .line 182
    const-string v0, "[DWL]"

    const-string/jumbo v1, "onFinishRecognition"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setDirectWritingFlag(Z)V

    .line 184
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingCompat;->setSkipHoverCursorChange(Landroid/widget/directwriting/WritingView;Z)V

    .line 185
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingBinderCallback;->onFinishRecognition()V

    .line 186
    return-void
.end method

.method public blacklist onTextViewExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTextViewExtraCommand action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWL]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public blacklist semForceHideSoftInput()V
    .locals 2

    .line 539
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    .line 540
    const-string v0, "[DWL]"

    const-string/jumbo v1, "semForceHideSoftInput failed, editText is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 544
    :cond_0
    invoke-direct {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->initImm()V

    .line 545
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 548
    :cond_1
    return-void
.end method

.method public blacklist setBinderCallback(Landroid/widget/directwriting/DirectWritingBinderCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/directwriting/DirectWritingBinderCallback;

    .line 119
    iput-object p1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    .line 120
    return-void
.end method

.method public blacklist setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z
    .locals 2
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 138
    if-eqz p1, :cond_0

    .line 139
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/directwriting/DirectWritingCompat;->setSkipHoverCursorChange(Landroid/widget/directwriting/WritingView;Z)V

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setBoundedEditTextInner(Landroid/widget/directwriting/WritingView;)V

    .line 142
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingCompat;->setSkipHoverCursorChange(Landroid/widget/directwriting/WritingView;Z)V

    .line 145
    invoke-direct {p0, v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setDirectWritingFlag(Z)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    .line 148
    return v1
.end method

.method public blacklist setBoundedEditTextInner(Landroid/widget/directwriting/WritingView;)V
    .locals 3
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 153
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->binderCallback:Landroid/widget/directwriting/DirectWritingBinderCallback;

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "setBoundedEditTextInner failed, binderCallback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setEditTextIfNeeded(Landroid/widget/directwriting/WritingView;)V

    .line 160
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->requestFocus()Z

    .line 163
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setDirectWritingFlag(Z)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBoundedEditTextInner done:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public blacklist setEditText(Landroid/widget/directwriting/WritingView;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/directwriting/WritingView;

    .line 123
    iput-object p1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    .line 124
    return-void
.end method

.method public blacklist setEditTextIfNeeded(Landroid/widget/directwriting/WritingView;)V
    .locals 2
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    .line 170
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 174
    const-string v0, "[DWL]"

    const-string/jumbo v1, "setBoundedEditTextInner already bounded, skipped to set"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setEditText(Landroid/widget/directwriting/WritingView;)V

    .line 178
    :goto_0
    return-void
.end method

.method public blacklist setSelection(I)V
    .locals 2
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 233
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method public blacklist setTextSelection(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .line 216
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 219
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public blacklist updateBoundedEditTextRect()V
    .locals 2

    .line 567
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mWritingView:Landroid/widget/directwriting/WritingView;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    return-void
.end method
