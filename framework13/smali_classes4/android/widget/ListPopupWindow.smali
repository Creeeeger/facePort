.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final whitelist MATCH_PARENT:I = -0x1

.field public static final whitelist POSITION_PROMPT_ABOVE:I = 0x0

.field public static final whitelist POSITION_PROMPT_BELOW:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final whitelist WRAP_CONTENT:I = -0x2


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownAlwaysVisible:Z

.field private greylist-max-o mDropDownAnchorView:Landroid/view/View;

.field private greylist-max-o mDropDownGravity:I

.field private greylist-max-o mDropDownHeight:I

.field private greylist-max-o mDropDownHorizontalOffset:I

.field private greylist mDropDownList:Landroid/widget/DropDownListView;

.field private greylist-max-o mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDropDownVerticalOffset:I

.field private greylist-max-o mDropDownVerticalOffsetSet:Z

.field private greylist-max-o mDropDownWidth:I

.field private greylist-max-o mDropDownWindowLayoutType:I

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mForceIgnoreOutsideTouch:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private greylist-max-o mIsAnimatedFromAnchor:Z

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mIsDexMode:Z

.field private greylist-max-o mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private greylist-max-o mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field greylist-max-o mListItemExpandMaximum:I

.field private greylist-max-o mModal:Z

.field private greylist-max-o mObserver:Landroid/database/DataSetObserver;

.field private greylist-max-o mOverlapAnchor:Z

.field private greylist-max-o mOverlapAnchorSet:Z

.field greylist mPopup:Landroid/widget/PopupWindow;

.field private greylist-max-o mPromptPosition:I

.field private greylist-max-o mPromptView:Landroid/view/View;

.field private final greylist-max-o mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final greylist-max-o mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private greylist-max-o mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDeviceDefault(Landroid/widget/ListPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResizePopupRunnable(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 214
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 215
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 228
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 88
    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 91
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 99
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 100
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 101
    const v2, 0x7fffffff

    iput v2, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 104
    iput v1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 115
    new-instance v2, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 116
    new-instance v2, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 117
    new-instance v2, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    .line 118
    new-instance v2, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    .line 123
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 137
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mIsDexMode:Z

    .line 138
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    .line 241
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 242
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 244
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 246
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 248
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 250
    if-eqz v3, :cond_0

    .line 251
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 253
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 256
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 259
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 260
    .local v3, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200b9

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 261
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    .line 263
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v4, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsDexMode:Z

    .line 266
    return-void
.end method

.method private greylist-max-r buildDropDown()I
    .locals 15

    .line 1188
    const/4 v0, 0x0

    .line 1190
    .local v0, "otherHeights":I
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    .line 1191
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1199
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1209
    iget-boolean v5, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1210
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1211
    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1213
    :cond_0
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1214
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1215
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/DropDownListView;->setFocusable(Z)V

    .line 1216
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1217
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    new-instance v6, Landroid/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1233
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1235
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 1236
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v6, v5}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1239
    :cond_1
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1241
    .local v5, "dropDownView":Landroid/view/ViewGroup;
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1242
    .local v6, "hintView":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 1245
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1246
    .local v7, "hintContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1248
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1252
    .local v8, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v9, :pswitch_data_0

    .line 1264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid hint position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ListPopupWindow"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :pswitch_0
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1256
    goto :goto_0

    .line 1259
    :pswitch_1
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1260
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    nop

    .line 1272
    :goto_0
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v9, :cond_2

    .line 1273
    const/high16 v9, -0x80000000

    .line 1274
    .local v9, "widthMode":I
    iget v10, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .local v10, "widthSize":I
    goto :goto_1

    .line 1276
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    :cond_2
    const/4 v9, 0x0

    .line 1277
    .restart local v9    # "widthMode":I
    const/4 v10, 0x0

    .line 1279
    .restart local v10    # "widthSize":I
    :goto_1
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1280
    .local v11, "widthSpec":I
    const/4 v12, 0x0

    .line 1281
    .local v12, "heightSpec":I
    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    .line 1283
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1284
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 1287
    .end local v0    # "otherHeights":I
    .local v13, "otherHeights":I
    move-object v5, v7

    move v0, v13

    .line 1290
    .end local v7    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v8    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    .end local v11    # "widthSpec":I
    .end local v12    # "heightSpec":I
    .end local v13    # "otherHeights":I
    .restart local v0    # "otherHeights":I
    :cond_3
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1291
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "hintView":Landroid/view/View;
    goto :goto_2

    .line 1292
    .end local v5    # "dropDownView":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1293
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 1294
    nop

    .line 1295
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1296
    .local v5, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    .line 1304
    .end local v1    # "view":Landroid/view/View;
    .end local v5    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1305
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    .line 1306
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1307
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 1312
    .local v5, "padding":I
    iget-boolean v6, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    if-nez v6, :cond_7

    .line 1313
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 1317
    .end local v5    # "padding":I
    :cond_6
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1318
    const/4 v5, 0x0

    .line 1322
    .restart local v5    # "padding":I
    :cond_7
    :goto_3
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1323
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    goto :goto_4

    :cond_8
    move v4, v3

    .line 1324
    .local v4, "ignoreBottomDecorations":Z
    :goto_4
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1325
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1324
    invoke-virtual {v6, v7, v8, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v6

    .line 1327
    .local v6, "maxHeight":I
    if-gez v6, :cond_9

    .line 1328
    return v3

    .line 1331
    :cond_9
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_c

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v3, v2, :cond_a

    goto :goto_6

    .line 1336
    :cond_a
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    .line 1353
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childWidthSpec":I
    goto :goto_5

    .line 1344
    .end local v2    # "childWidthSpec":I
    :pswitch_2
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1345
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    .line 1344
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1348
    .restart local v2    # "childWidthSpec":I
    goto :goto_5

    .line 1338
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1339
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    sub-int/2addr v2, v3

    const/high16 v3, -0x80000000

    .line 1338
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1342
    .restart local v2    # "childWidthSpec":I
    nop

    .line 1361
    :goto_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v6, v0

    const/4 v12, -0x1

    move v8, v2

    invoke-virtual/range {v7 .. v12}, Landroid/widget/DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v3

    .line 1363
    .local v3, "listContent":I
    if-lez v3, :cond_b

    .line 1364
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1365
    invoke-virtual {v8}, Landroid/widget/DropDownListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 1366
    .local v7, "listPadding":I
    add-int v8, v5, v7

    add-int/2addr v0, v8

    .line 1369
    .end local v7    # "listPadding":I
    :cond_b
    add-int v7, v3, v0

    return v7

    .line 1332
    .end local v2    # "childWidthSpec":I
    .end local v3    # "listContent":I
    :cond_c
    :goto_6
    add-int v2, v6, v5

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private greylist-max-o removePromptView()V
    .locals 3

    .line 818
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 820
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 821
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 822
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 825
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private blacklist setBlurEffect()V
    .locals 7

    .line 1374
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    if-eqz v1, :cond_3

    .line 1375
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1377
    .local v0, "isThemeApplied":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_reduce_transparency"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1379
    .local v3, "isReduceTransparency":Z
    :goto_1
    new-instance v4, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v4, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    move-object v2, v4

    .line 1380
    .local v2, "builder":Landroid/view/SemBlurInfo$Builder;
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->semIsAvailableBlurBackground()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1381
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1382
    .local v4, "colorValue":Landroid/util/TypedValue;
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11200ba

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1383
    iget v1, v4, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_2

    .line 1384
    const v1, 0x106034b

    goto :goto_2

    .line 1385
    :cond_2
    const v1, 0x106034a

    :goto_2
    nop

    .line 1387
    .local v1, "blurBackgroundColorId":I
    const/16 v5, 0x78

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 1388
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 1389
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105043b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 1391
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 1393
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v5, :cond_3

    .line 1395
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOverScrollMode(I)V

    .line 1399
    .end local v0    # "isThemeApplied":Z
    .end local v1    # "blurBackgroundColorId":I
    .end local v2    # "builder":Landroid/view/SemBlurInfo$Builder;
    .end local v3    # "isReduceTransparency":Z
    .end local v4    # "colorValue":Landroid/util/TypedValue;
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist clearListSelection()V
    .locals 2

    .line 874
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 875
    .local v0, "list":Landroid/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 877
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 878
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->hideSelector()V

    .line 879
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->requestLayout()V

    .line 881
    :cond_0
    return-void
.end method

.method public whitelist createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .line 1171
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method greylist-max-o createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 978
    new-instance v0, Landroid/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 2

    .line 792
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 793
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 794
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 795
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 796
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method

.method public blacklist dismissImmediate()V
    .locals 2

    .line 804
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 805
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 806
    return-void
.end method

.method public whitelist getAnchorView()Landroid/view/View;
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .locals 1

    .line 439
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 411
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2

    .line 522
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 591
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public whitelist getHorizontalOffset()I
    .locals 1

    .line 466
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .locals 1

    .line 849
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .locals 1

    .line 974
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method public whitelist getPromptPosition()I
    .locals 1

    .line 310
    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 923
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const/4 v0, 0x0

    return-object v0

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedItemId()J
    .locals 2

    .line 949
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 952
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1

    .line 936
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    const/4 v0, -0x1

    return v0

    .line 939
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .locals 1

    .line 962
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    const/4 v0, 0x0

    return-object v0

    .line 965
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSoftInputMode()I
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public whitelist getVerticalOffset()I
    .locals 1

    .line 484
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    return v0

    .line 487
    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 539
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public greylist-max-r isDropDownAlwaysVisible()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public whitelist isInputMethodNotNeeded()Z
    .locals 2

    .line 896
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isModal()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .locals 1

    .line 888
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1005
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1011
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1012
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 1013
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1014
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 1017
    .local v0, "curIndex":I
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 1019
    .local v2, "below":Z
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 1022
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 1023
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 1025
    .local v6, "lastItem":I
    if-eqz v4, :cond_3

    .line 1026
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 1027
    .local v7, "allEnabled":Z
    if-eqz v7, :cond_1

    move v8, v1

    goto :goto_0

    .line 1028
    :cond_1
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v8, v1, v3}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_0
    move v5, v8

    .line 1029
    if-eqz v7, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_1

    .line 1030
    :cond_2
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_1
    move v6, v8

    .line 1033
    .end local v7    # "allEnabled":Z
    :cond_3
    const/16 v7, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v8, 0x14

    if-nez v2, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v0, v6, :cond_6

    .line 1037
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 1038
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1039
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1040
    return v3

    .line 1044
    :cond_6
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v9, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 1047
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 1050
    .local v9, "consumed":Z
    if-eqz v9, :cond_7

    .line 1053
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1058
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 1059
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1061
    sparse-switch p1, :sswitch_data_0

    .line 1069
    goto :goto_2

    :sswitch_0
    return v3

    .line 1072
    :cond_7
    if-eqz v2, :cond_8

    if-ne p1, v8, :cond_8

    .line 1075
    if-ne v0, v6, :cond_9

    .line 1076
    return v3

    .line 1078
    :cond_8
    if-nez v2, :cond_9

    if-ne p1, v7, :cond_9

    if-ne v0, v5, :cond_9

    .line 1080
    return v3

    .line 1086
    .end local v0    # "curIndex":I
    .end local v2    # "below":Z
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    .end local v9    # "consumed":Z
    :cond_9
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1125
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4

    .line 1126
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1129
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1130
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1131
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1132
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 1133
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1135
    :cond_1
    return v2

    .line 1136
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1138
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_3

    .line 1139
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1141
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1142
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1143
    return v2

    .line 1147
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1101
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1102
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1103
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1108
    :cond_0
    return v0

    .line 1110
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .line 907
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 910
    .local v0, "list":Landroid/widget/DropDownListView;
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 911
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 912
    .local v8, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 914
    .end local v0    # "list":Landroid/widget/DropDownListView;
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 916
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postShow()V
    .locals 2

    .line 673
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 674
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 275
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver-IA;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 277
    :cond_0
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 280
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 281
    if-eqz p1, :cond_2

    .line 282
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 285
    :cond_2
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_3

    .line 286
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    :cond_3
    return-void
.end method

.method public whitelist setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 458
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 459
    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .line 429
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 430
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    return-void
.end method

.method public whitelist setContentWidth(I)V
    .locals 6
    .param p1, "width"    # I

    .line 567
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 568
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 569
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 572
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    .line 573
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 574
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 575
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 576
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 578
    .end local v2    # "displayFrame":Landroid/graphics/Rect;
    goto :goto_0

    .line 579
    :cond_0
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 582
    .end local v1    # "anchor":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 583
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 585
    :goto_1
    return-void
.end method

.method public greylist-max-r setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .line 361
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 362
    return-void
.end method

.method public whitelist setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 532
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 533
    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 510
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 511
    return-void
.end method

.method public greylist setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .line 345
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 346
    return-void
.end method

.method public whitelist setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 603
    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    .line 605
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to ListPopupWindow#setHeight produces undefined results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_1
    :goto_0
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 615
    return-void
.end method

.method public whitelist setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 476
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 477
    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 840
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 841
    return-void
.end method

.method greylist-max-r setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 989
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 990
    return-void
.end method

.method public whitelist setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 404
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 405
    return-void
.end method

.method public whitelist setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .line 323
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    .line 324
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 325
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 814
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 815
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 638
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 639
    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 649
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 650
    return-void
.end method

.method public greylist-max-o setOverlapAnchor(Z)V
    .locals 1
    .param p1, "overlap"    # Z

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1407
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1408
    return-void
.end method

.method public whitelist setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 300
    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 301
    return-void
.end method

.method public whitelist setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .line 659
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 660
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 663
    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 664
    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 667
    :cond_1
    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 859
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 860
    .local v0, "list":Landroid/widget/DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 861
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/widget/DropDownListView;->setSelection(I)V

    .line 863
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/DropDownListView;->setItemChecked(IZ)V

    .line 867
    :cond_0
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 385
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 386
    return-void
.end method

.method public whitelist setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 497
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 499
    return-void
.end method

.method public whitelist setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 551
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsDexMode:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    .line 552
    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An abnormal value has been passed. width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :cond_0
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 558
    :goto_0
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .line 627
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 628
    return-void
.end method

.method public whitelist show()V
    .locals 14

    .line 682
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    .line 684
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 685
    .local v1, "noInputMethod":Z
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 686
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 688
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v2, :cond_d

    .line 689
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    return-void

    .line 694
    :cond_0
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_1

    .line 697
    const/4 v2, -0x1

    .local v2, "widthSpec":I
    goto :goto_0

    .line 698
    .end local v2    # "widthSpec":I
    :cond_1
    if-ne v2, v3, :cond_2

    .line 699
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_0

    .line 701
    .end local v2    # "widthSpec":I
    :cond_2
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 705
    .restart local v2    # "widthSpec":I
    :goto_0
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_7

    .line 708
    if-eqz v1, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v6

    .line 709
    .local v3, "heightSpec":I
    :goto_1
    if-eqz v1, :cond_5

    .line 710
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_4

    .line 711
    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v4

    .line 710
    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 712
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 714
    :cond_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_6

    .line 715
    move v8, v6

    goto :goto_3

    :cond_6
    move v8, v4

    .line 714
    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 716
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 718
    .end local v3    # "heightSpec":I
    :cond_7
    if-eq v7, v3, :cond_9

    if-ge v0, v7, :cond_8

    goto :goto_4

    .line 722
    :cond_8
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v3    # "heightSpec":I
    goto :goto_5

    .line 720
    .end local v3    # "heightSpec":I
    :cond_9
    :goto_4
    move v3, v0

    .line 725
    .restart local v3    # "heightSpec":I
    :goto_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 729
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v11, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 730
    if-gez v2, :cond_b

    move v12, v6

    goto :goto_6

    :cond_b
    move v12, v2

    .line 731
    :goto_6
    if-gez v3, :cond_c

    move v13, v6

    goto :goto_7

    :cond_c
    move v13, v3

    .line 729
    :goto_7
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 733
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 734
    .end local v2    # "widthSpec":I
    .end local v3    # "heightSpec":I
    goto/16 :goto_b

    .line 736
    :cond_d
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_e

    .line 737
    const/4 v2, -0x1

    .restart local v2    # "widthSpec":I
    goto :goto_8

    .line 739
    .end local v2    # "widthSpec":I
    :cond_e
    if-ne v2, v3, :cond_f

    .line 740
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_8

    .line 742
    .end local v2    # "widthSpec":I
    :cond_f
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 747
    .restart local v2    # "widthSpec":I
    :goto_8
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_10

    .line 748
    const/4 v3, -0x1

    .restart local v3    # "heightSpec":I
    goto :goto_a

    .line 751
    .end local v3    # "heightSpec":I
    :cond_10
    if-eq v7, v3, :cond_12

    if-ge v0, v7, :cond_11

    goto :goto_9

    .line 755
    :cond_11
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "heightSpec":I
    goto :goto_a

    .line 753
    .end local v3    # "heightSpec":I
    :cond_12
    :goto_9
    move v3, v0

    .line 760
    .restart local v3    # "heightSpec":I
    :goto_a
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->setBlurEffect()V

    .line 761
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 762
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 763
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 767
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_13

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 768
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 769
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 770
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v4, :cond_14

    .line 771
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 773
    :cond_14
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 775
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4, v6}, Landroid/widget/DropDownListView;->setSelection(I)V

    .line 776
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 778
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/widget/DropDownListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 779
    :cond_15
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 781
    :cond_16
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v4, :cond_17

    .line 782
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 785
    .end local v2    # "widthSpec":I
    .end local v3    # "heightSpec":I
    :cond_17
    :goto_b
    return-void
.end method
