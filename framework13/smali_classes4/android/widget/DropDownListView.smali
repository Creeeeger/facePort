.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private greylist-max-o mDrawsInPressedState:Z

.field private greylist-max-o mHijackFocus:Z

.field blacklist mIsAutoCompleteTextPopup:Z

.field private greylist-max-o mListSelectionHidden:Z

.field private greylist-max-o mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private greylist-max-o mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 98
    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    .line 99
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .param p3, "defStyleAttr"    # I

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    .line 108
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    .line 111
    return-void
.end method

.method private greylist-max-o clearPressedItem()V
    .locals 3

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 271
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 272
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 274
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method private greylist-max-o setPressedItem(Landroid/view/View;IFF)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 284
    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 285
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 290
    :cond_0
    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    .line 296
    :cond_1
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 300
    :cond_2
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    .line 304
    .local v2, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 305
    .local v3, "childY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 311
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 312
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    .line 317
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_0

    .line 186
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 188
    :cond_0
    return-void
.end method

.method public whitelist hasFocus()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist hasWindowFocus()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isInTouchMode()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .line 333
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 336
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 339
    :cond_0
    return-object v0
.end method

.method public greylist-max-o onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 197
    const/4 v0, 0x1

    .line 198
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 200
    .local v1, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 201
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    const/4 v0, 0x0

    .line 204
    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v0, 0x0

    .line 209
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 210
    .local v4, "activeIndex":I
    if-gez v4, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 212
    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 216
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 218
    .local v6, "y":I
    if-gez v6, :cond_1

    .line 219
    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 223
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 224
    const/4 v1, 0x1

    .line 225
    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 229
    .local v8, "child":Landroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 230
    const/4 v0, 0x1

    .line 232
    if-ne v2, v3, :cond_3

    .line 233
    invoke-virtual {p0, v7}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v9

    .line 234
    .local v9, "id":J
    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 240
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "id":J
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 241
    :cond_4
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    .line 245
    :cond_5
    if-eqz v0, :cond_7

    .line 246
    iget-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v4, :cond_6

    .line 247
    new-instance v4, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 249
    :cond_6
    iget-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 250
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v3, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 251
    :cond_7
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v3, :cond_8

    .line 252
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 255
    :cond_8
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 131
    .local v0, "action":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable-IA;)V

    iput-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 135
    invoke-virtual {v1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 141
    .local v1, "handled":Z
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v2

    if-nez v2, :cond_7

    .line 175
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 176
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v2

    .line 144
    .local v2, "position":I
    if-eq v2, v3, :cond_6

    iget v3, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq v2, v3, :cond_6

    .line 145
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 146
    .local v3, "hoveredItem":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, "talkbackEnabled":Z
    iget-object v5, p0, Landroid/widget/DropDownListView;->mContext:Landroid/content/Context;

    .line 154
    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 155
    .local v5, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v4

    .line 159
    :cond_3
    if-nez v4, :cond_5

    .line 160
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v6

    if-nez v6, :cond_4

    .line 161
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setHovered(Z)V

    .line 163
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    .line 164
    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 165
    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    .line 169
    .end local v4    # "talkbackEnabled":Z
    .end local v5    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_5
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 171
    .end local v2    # "position":I
    .end local v3    # "hoveredItem":Landroid/view/View;
    :cond_6
    nop

    .line 180
    :cond_7
    :goto_1
    return v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 120
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .line 266
    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    .line 267
    return-void
.end method

.method greylist-max-o shouldShowSelector()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
