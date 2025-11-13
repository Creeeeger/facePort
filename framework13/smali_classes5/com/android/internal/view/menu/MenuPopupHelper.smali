.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;


# static fields
.field private static final greylist-max-o TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private greylist-max-o mAnchorView:Landroid/view/View;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownGravity:I

.field private greylist-max-r mForceShowIcon:Z

.field private final greylist-max-o mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private blacklist mIsContextMenu:Z

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private final greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOverflowOnly:Z

.field private greylist-max-o mPopup:Lcom/android/internal/view/menu/MenuPopup;

.field private final greylist-max-o mPopupStyleAttr:I

.field private final greylist-max-o mPopupStyleRes:I

.field private greylist-max-o mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 68
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010300

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .line 74
    const/4 v4, 0x0

    const v5, 0x1010300

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 75
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .line 80
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x800003

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 350
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 86
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 88
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 89
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 90
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 91
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 94
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 95
    .local v0, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200b9

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsThemeDeviceDefaultFamily:Z

    .line 99
    .end local v0    # "themeValue":Landroid/util/TypedValue;
    return-void
.end method

.method private greylist-max-o createPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 13

    .line 241
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 242
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 244
    .local v1, "maxWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 245
    .local v2, "smallestWidth":I
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 247
    .local v3, "minSmallestWidthCascading":I
    if-lt v2, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 250
    .local v4, "enableCascadingSubmenus":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 251
    new-instance v11, Lcom/android/internal/view/menu/CascadingMenuPopup;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .local v5, "popup":Lcom/android/internal/view/menu/MenuPopup;
    goto :goto_1

    .line 254
    .end local v5    # "popup":Lcom/android/internal/view/menu/MenuPopup;
    :cond_1
    new-instance v5, Lcom/android/internal/view/menu/StandardMenuPopup;

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v12, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    .line 259
    .restart local v5    # "popup":Lcom/android/internal/view/menu/MenuPopup;
    :goto_1
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 260
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 263
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 264
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 265
    iget-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 266
    iget v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuPopup;->setGravity(I)V

    .line 268
    return-object v5
.end method

.method private greylist-max-o showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    .line 273
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopup;
    invoke-virtual {v0, p4}, Lcom/android/internal/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 275
    if-eqz p3, :cond_4

    .line 279
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 280
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 279
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 282
    .local v1, "hgrav":I
    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsContextMenu:Z

    if-nez v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 284
    .local v2, "isRtl":Z
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr p1, v3

    .line 285
    if-eqz v2, :cond_1

    neg-int v3, p1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 286
    .end local v2    # "isRtl":Z
    goto :goto_2

    .line 287
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p1, v2

    .line 290
    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 292
    :goto_2
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 298
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 299
    .local v2, "density":F
    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 300
    .local v3, "halfSize":I
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v3

    sub-int v6, p2, v3

    add-int v7, p1, v3

    add-int v8, p2, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .local v4, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lcom/android/internal/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 305
    .end local v1    # "hgrav":I
    .end local v2    # "density":F
    .end local v3    # "halfSize":I
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->show()V

    .line 306
    return-void
.end method


# virtual methods
.method public greylist dismiss()V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->dismiss()V

    .line 317
    :cond_0
    return-void
.end method

.method public greylist-max-o getGravity()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public greylist-max-r getPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->createPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    return-object v0
.end method

.method public greylist-max-o isShowing()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected greylist-max-o onDismiss()V
    .locals 1

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    .line 330
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 333
    :cond_0
    return-void
.end method

.method public greylist-max-r setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 114
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 115
    return-void
.end method

.method public greylist setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 132
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public greylist-max-r setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 146
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 147
    return-void
.end method

.method public greylist-max-o setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 102
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 103
    return-void
.end method

.method public greylist-max-o setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 341
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 342
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 345
    :cond_0
    return-void
.end method

.method public greylist show()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r tryShow()Z
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 187
    return v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 191
    return v2

    .line 194
    :cond_1
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 195
    return v1
.end method

.method public greylist-max-o tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 223
    return v1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 227
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 231
    return v1
.end method
