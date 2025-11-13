.class final Lcom/android/internal/view/menu/StandardMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final blacklist ITEM_LAYOUT:I = 0x10900ef

.field private static final blacklist SEM_ITEM_LAYOUT:I = 0x1090170


# instance fields
.field private final blacklist mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

.field private blacklist mAnchorView:Landroid/view/View;

.field private final blacklist mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private blacklist mContentWidth:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDropDownGravity:I

.field private final blacklist mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private blacklist mHasContentWidth:Z

.field private blacklist mIsParentThemeDeviceDefault:Z

.field private final blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private blacklist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final blacklist mOverflowOnly:Z

.field private final blacklist mPopup:Landroid/widget/MenuPopupWindow;

.field private final blacklist mPopupMaxWidth:I

.field private final blacklist mPopupStyleAttr:I

.field private final blacklist mPopupStyleRes:I

.field private blacklist mPopupWindowLayout:I

.field private blacklist mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private blacklist mShowTitle:Z

.field private blacklist mShownAnchorView:Landroid/view/View;

.field private blacklist mTreeObserver:Landroid/view/ViewTreeObserver;

.field private blacklist mWasDismissed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalLayoutListener(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsParentThemeDeviceDefault(Lcom/android/internal/view/menu/StandardMenuPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTreeObserver(Lcom/android/internal/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .line 140
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    .line 68
    new-instance v0, Lcom/android/internal/view/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$1;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 98
    new-instance v0, Lcom/android/internal/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$2;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 136
    iput v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupWindowLayout:I

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 143
    iput-boolean p6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 145
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 146
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 147
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    .line 149
    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 151
    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_2

    .line 159
    new-instance v2, Lcom/android/internal/view/menu/MenuAdapter;

    const v3, 0x1090170

    invoke-direct {v2, p2, v0, p6, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    goto :goto_1

    .line 161
    :cond_2
    new-instance v2, Lcom/android/internal/view/menu/MenuAdapter;

    const v3, 0x10900ef

    invoke-direct {v2, p2, v0, p6, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    .line 163
    :goto_1
    iput p4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 164
    iput p5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 167
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 168
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    goto :goto_2

    .line 171
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    const v4, 0x10500c9

    .line 172
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 171
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 176
    :goto_2
    iput-object p3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 178
    new-instance v3, Landroid/widget/MenuPopupWindow;

    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p4, p5}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    .line 181
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method private blacklist tryShow()Z
    .locals 9

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 196
    return v1

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 203
    :cond_1
    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 211
    .local v0, "anchor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 212
    .local v3, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 213
    if-eqz v3, :cond_3

    .line 214
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 216
    :cond_3
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 217
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 218
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v4

    if-nez v4, :cond_4

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 226
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v5, 0x0

    if-nez v4, :cond_5

    .line 227
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 228
    iput-boolean v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 231
    :cond_5
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 232
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 234
    iget v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupWindowLayout:I

    if-eqz v4, :cond_6

    .line 235
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v6, v4}, Landroid/widget/MenuPopupWindow;->setWindowLayoutType(I)V

    .line 238
    :cond_6
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 239
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 241
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 242
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 244
    iget-boolean v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 247
    iget-boolean v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_7

    .line 248
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x109016e

    invoke-virtual {v6, v7, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .local v6, "titleItemView":Landroid/widget/FrameLayout;
    goto :goto_1

    .line 253
    .end local v6    # "titleItemView":Landroid/widget/FrameLayout;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900ee

    invoke-virtual {v6, v7, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 259
    .restart local v6    # "titleItemView":Landroid/widget/FrameLayout;
    :goto_1
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 261
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_8

    .line 262
    iget-object v8, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_8
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 265
    invoke-virtual {v4, v6, v5, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 268
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/widget/MenuPopupWindow;->show()V

    .line 270
    .end local v6    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_9
    return v1

    .line 200
    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "addGlobalListener":Z
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_a
    :goto_2
    return v2
.end method


# virtual methods
.method public blacklist addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 290
    return-void
.end method

.method public blacklist dismiss()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 285
    :cond_0
    return-void
.end method

.method public blacklist flagActionItems()Z
    .locals 1

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListView()Landroid/widget/ListView;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 368
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 371
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 374
    :cond_1
    return-void
.end method

.method public whitelist onDismiss()V
    .locals 2

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 300
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 302
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 310
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 312
    :cond_2
    return-void
.end method

.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 397
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 399
    return v1

    .line 401
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 388
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 330
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 333
    .local v0, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 334
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 341
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 344
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v2

    .line 345
    .local v2, "horizontalOffset":I
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v3

    .line 349
    .local v3, "verticalOffset":I
    iget v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 350
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 349
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    .line 351
    .local v4, "hgrav":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 352
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 355
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    .line 357
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 359
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 362
    .end local v0    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    .end local v2    # "horizontalOffset":I
    .end local v3    # "verticalOffset":I
    .end local v4    # "hgrav":I
    :cond_2
    return v1
.end method

.method public blacklist setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 392
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 393
    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 325
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 326
    return-void
.end method

.method public blacklist setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .line 186
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 187
    return-void
.end method

.method public blacklist setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 191
    iput p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 192
    return-void
.end method

.method public blacklist setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 417
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 418
    return-void
.end method

.method public blacklist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 406
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 407
    return-void
.end method

.method public blacklist setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 428
    return-void
.end method

.method public blacklist setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 422
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 423
    return-void
.end method

.method public blacklist show()V
    .locals 2

    .line 275
    invoke-direct {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 318
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 321
    :cond_0
    return-void
.end method
