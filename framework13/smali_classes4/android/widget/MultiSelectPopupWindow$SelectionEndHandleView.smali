.class Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;
.super Landroid/widget/MultiSelectPopupWindow$HandleView;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .line 1304
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1305
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1306
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHandleType:I

    .line 1307
    return-void
.end method

.method private blacklist isHandleViewScreenOut()Z
    .locals 5

    .line 1414
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1415
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$mgetPositionListener(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    .line 1416
    .local v1, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1418
    .local v2, "iconSize":I
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method protected blacklist calculateForSwitchingCursor()Z
    .locals 5

    .line 1377
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 1378
    .local v0, "bSwitchCursor":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 1380
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1381
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 1384
    :cond_0
    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eq v0, v2, :cond_1

    .line 1385
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V

    .line 1386
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1387
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v2, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    .line 1388
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    .line 1389
    return v3

    .line 1391
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_1
    return v1
.end method

.method public blacklist getCurrentCursorOffset()I
    .locals 3

    .line 1320
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1321
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1322
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method protected blacklist getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 1311
    if-eqz p2, :cond_0

    .line 1312
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 1314
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected blacklist positionAtCursorOffset(IZZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .line 1360
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1361
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 1362
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionHasChanged:Z

    .line 1364
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->invalidate()V

    .line 1366
    :cond_0
    return-void
.end method

.method public blacklist refreshForSwitchingCursor()Z
    .locals 1

    .line 1369
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1373
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1370
    :cond_1
    :goto_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1371
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist updateDrawable()V
    .locals 4

    .line 1395
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 1396
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1397
    .local v1, "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    .line 1399
    .local v2, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_0

    .line 1400
    xor-int/lit8 v3, v2, 0x1

    move v2, v3

    .line 1403
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1404
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v2}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    .line 1405
    invoke-virtual {p0, v2}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHorizontalGravity(Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHorizontalGravity:I

    .line 1407
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v3, :cond_2

    .line 1408
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->recalHandleView()V

    .line 1409
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->invalidate()V

    .line 1411
    :cond_2
    return-void
.end method

.method public blacklist updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1346
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1347
    .local v0, "offset":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1349
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1350
    .local v2, "selectionStart":I
    if-ne v0, v2, :cond_0

    .line 1351
    return-void

    .line 1353
    :cond_0
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mEndRange:I

    if-le v0, v3, :cond_1

    .line 1354
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mEndRange:I

    .line 1356
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->positionAtCursorOffset(IZZ)V

    .line 1357
    return-void
.end method

.method public blacklist updateSelection(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 1330
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1331
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1332
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-void

    .line 1336
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1337
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V

    .line 1339
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextActionMode()Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1340
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextActionMode()Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 1342
    :cond_1
    return-void
.end method
