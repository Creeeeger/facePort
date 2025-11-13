.class public Landroidx/appcompat/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAllowScrollingAnchorParent:Z

.field public mAnchorView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public mDropDownGravity:I

.field public mForceShowIcon:Z

.field public mForceShowUpper:Z

.field public final mInternalOnDismissListener:Landroidx/appcompat/view/menu/MenuPopupHelper$1;

.field public final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field public mOverflowOnly:Z

.field public mOverlapAnchor:Z

.field public mOverlapAnchorSet:Z

.field public mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

.field public final mPopupStyleAttr:I

.field public final mPopupStyleRes:I

.field public mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowUpper:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAllowScrollingAnchorParent:Z

    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/MenuPopupHelper$1;-><init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroidx/appcompat/view/menu/MenuPopupHelper$1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iput-object p5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    iput p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iput p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    return-void
.end method


# virtual methods
.method public final getPopup()Landroidx/appcompat/view/menu/StandardMenuPopup;
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget-boolean v8, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    iget v3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/StandardMenuPopup;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverlapAnchorSet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverlapAnchor:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverlapAnchorSet:Z

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverlapAnchor:Z

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowUpper:Z

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mForceShowUpper:Z

    :cond_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAllowScrollingAnchorParent:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAllowScrollingAnchorParent:Z

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroidx/appcompat/view/menu/MenuPopupHelper$1;

    iput-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iput-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iput-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    iget-object v2, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    iput-boolean v1, v2, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    iget v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iput v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    return-object p0
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final showPopup(ZZ)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/StandardMenuPopup;

    move-result-object v3

    iput-boolean p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0710d7

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iput p2, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p2, 0x0

    iget-object p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iput p1, p2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    :goto_1
    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x42400000    # 48.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    new-instance p1, Landroid/graphics/Rect;

    rsub-int/lit8 p2, p0, 0x0

    invoke-direct {p1, p2, p2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-boolean p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez p0, :cond_12

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-eqz p0, :cond_12

    iput-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverlapAnchorSet:Z

    if-eqz p0, :cond_4

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-boolean p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverlapAnchor:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    iget-boolean p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mForceShowUpper:Z

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    :cond_4
    iget-boolean p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAllowScrollingAnchorParent:Z

    if-nez p0, :cond_5

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatPopupWindow;->seslSetAllowScrollingAnchorParent(Z)V

    :cond_5
    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iput-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez p1, :cond_6

    move p1, v1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iput-object p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_7

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroidx/appcompat/view/menu/StandardMenuPopup$1;

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iput-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iput p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    iget-boolean p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez p0, :cond_d

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    move-object v10, v0

    move-object v11, v10

    move v7, v2

    move v8, v7

    move v9, v8

    :goto_3
    if-ge v7, v6, :cond_c

    invoke-interface {p0, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v12

    if-eq v12, v9, :cond_8

    move-object v11, v0

    move v9, v12

    :cond_8
    if-nez v10, :cond_9

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_9
    invoke-interface {p0, v7, v11, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-lt v12, p2, :cond_a

    goto :goto_4

    :cond_a
    if-le v12, v8, :cond_b

    move v8, v12

    :cond_b
    add-int/2addr v7, v1

    goto :goto_3

    :cond_c
    move p2, v8

    :goto_4
    iput p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    iput-boolean v1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    :cond_d
    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 p1, 0x2

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_e
    move-object p2, v0

    :goto_5
    iput-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mIsSubMenu:Z

    if-eqz p1, :cond_f

    move-object p2, v0

    goto :goto_6

    :cond_f
    move-object p2, p0

    :goto_6
    iput-object p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTmpListView:Landroidx/appcompat/widget/DropDownListView;

    iget-boolean p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz p2, :cond_11

    iget-object p2, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p2, p2, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    if-eqz p2, :cond_11

    if-nez p1, :cond_11

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0ae3

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_10

    iget-object v1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p0, p1, v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_11
    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p1, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p0, v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :goto_7
    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final tryShow$1()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(ZZ)V

    return v1
.end method
