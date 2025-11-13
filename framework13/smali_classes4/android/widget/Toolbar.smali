.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$SavedState;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final blacklist ATTRS:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private greylist-max-o mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private blacklist mBackgroundResourceId:I

.field private greylist-max-o mButtonGravity:I

.field private greylist-max-o mCollapseButtonView:Landroid/widget/ImageButton;

.field private greylist-max-o mCollapseDescription:Ljava/lang/CharSequence;

.field private blacklist mCollapseHandler:Landroid/os/Handler;

.field private greylist-max-o mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mCollapsible:Z

.field private greylist-max-o mContentInsetEndWithActions:I

.field private greylist-max-o mContentInsetStartWithNavigation:I

.field private greylist-max-o mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private greylist-max-o mEatingTouch:Z

.field greylist-max-o mExpandedActionView:Landroid/view/View;

.field private greylist-max-o mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private greylist-max-o mGravity:I

.field private final greylist-max-o mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsCustomNavIcon:Z

.field private blacklist mIsSetOpenTheme:Z

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private greylist-max-o mLogoView:Landroid/widget/ImageView;

.field private greylist-max-o mMaxButtonHeight:I

.field private blacklist mMaxFontScale:F

.field private greylist-max-o mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private greylist-max-o mMenuView:Landroid/widget/ActionMenuView;

.field private final greylist-max-o mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private greylist-max-o mNavButtonStyle:I

.field private greylist-max-p mNavButtonView:Landroid/widget/ImageButton;

.field private blacklist mNavIconResourceId:I

.field private blacklist mNavigationBarHeight:I

.field private greylist-max-o mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private greylist-max-o mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private blacklist mPerformToCollapse:Ljava/lang/Runnable;

.field private greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mPopupTheme:I

.field private final greylist-max-o mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mSubtitleText:Ljava/lang/CharSequence;

.field private greylist-max-o mSubtitleTextAppearance:I

.field private greylist-max-o mSubtitleTextColor:I

.field private greylist-max-o mSubtitleTextView:Landroid/widget/TextView;

.field private final greylist-max-o mTempMargins:[I

.field private final greylist-max-o mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mTitleMarginBottom:I

.field private greylist mTitleMarginEnd:I

.field private greylist mTitleMarginStart:I

.field private greylist mTitleMarginTop:I

.field private greylist-max-o mTitleText:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleTextAppearance:I

.field private greylist-max-o mTitleTextColor:I

.field private greylist mTitleTextView:Landroid/widget/TextView;

.field private greylist-max-o mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonGravity(Landroid/widget/Toolbar;)I
    .locals 0

    iget p0, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapseButtonView(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapseHandler(Landroid/widget/Toolbar;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/Toolbar;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPerformToCollapse(Landroid/widget/Toolbar;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mensureCollapseButtonView(Landroid/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Toolbar;->ATTRS:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 268
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 273
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 276
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    const/4 v12, 0x0

    iput v12, v7, Landroid/widget/Toolbar;->mNavIconResourceId:I

    .line 182
    iput-boolean v12, v7, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    .line 183
    iput v12, v7, Landroid/widget/Toolbar;->mNavigationBarHeight:I

    .line 203
    const v0, 0x800013

    iput v0, v7, Landroid/widget/Toolbar;->mGravity:I

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 219
    const/4 v13, 0x2

    new-array v0, v13, [I

    iput-object v0, v7, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 223
    new-instance v0, Landroid/widget/Toolbar$1;

    invoke-direct {v0, v7}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    iput-object v0, v7, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 242
    new-instance v0, Landroid/widget/Toolbar$2;

    invoke-direct {v0, v7}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    iput-object v0, v7, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 261
    const v0, 0x3fa66666    # 1.3f

    iput v0, v7, Landroid/widget/Toolbar;->mMaxFontScale:F

    .line 1800
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v7, Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;

    .line 1801
    new-instance v0, Landroid/widget/Toolbar$3;

    invoke-direct {v0, v7}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    iput-object v0, v7, Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 280
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200b9

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v0, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 282
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    iput-boolean v1, v7, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    .line 283
    if-eqz v1, :cond_1

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v14

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    iput-boolean v1, v7, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    .line 287
    .end local v0    # "outValue":Landroid/util/TypedValue;
    sget-object v0, Lcom/android/internal/R$styleable;->Toolbar:[I

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 289
    .local v15, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Toolbar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 292
    const/4 v0, 0x4

    invoke-virtual {v15, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 293
    const/4 v0, 0x5

    invoke-virtual {v15, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 294
    const/16 v0, 0x1b

    invoke-virtual {v15, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Toolbar;->mNavButtonStyle:I

    .line 295
    iget v0, v7, Landroid/widget/Toolbar;->mGravity:I

    invoke-virtual {v15, v12, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Toolbar;->mGravity:I

    .line 296
    const/16 v0, 0x17

    const/16 v1, 0x30

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Toolbar;->mButtonGravity:I

    .line 297
    const/16 v0, 0x11

    .line 298
    invoke-virtual {v15, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    iput v0, v7, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iput v0, v7, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    iput v0, v7, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 300
    const/16 v0, 0x12

    const/4 v1, -0x1

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 301
    .local v0, "marginStart":I
    if-ltz v0, :cond_2

    .line 302
    iput v0, v7, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 305
    :cond_2
    const/16 v2, 0x13

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 306
    .local v2, "marginEnd":I
    if-ltz v2, :cond_3

    .line 307
    iput v2, v7, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 310
    :cond_3
    const/16 v3, 0x14

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 311
    .local v3, "marginTop":I
    if-ltz v3, :cond_4

    .line 312
    iput v3, v7, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 315
    :cond_4
    const/16 v4, 0x15

    invoke-virtual {v15, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 317
    .local v4, "marginBottom":I
    if-ltz v4, :cond_5

    .line 318
    iput v4, v7, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 322
    :cond_5
    iget-boolean v5, v7, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x16

    invoke-virtual {v15, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    iput v5, v7, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    .line 324
    const/4 v5, 0x6

    .line 325
    const/high16 v6, -0x80000000

    invoke-virtual {v15, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 327
    .local v5, "contentInsetStart":I
    const/4 v1, 0x7

    .line 328
    invoke-virtual {v15, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 330
    .local v1, "contentInsetEnd":I
    const/16 v13, 0x8

    .line 331
    invoke-virtual {v15, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 332
    .local v13, "contentInsetLeft":I
    const/16 v14, 0x9

    .line 333
    invoke-virtual {v15, v14, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 335
    .local v14, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 336
    iget-object v12, v7, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v12, v13, v14}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 338
    if-ne v5, v6, :cond_7

    if-eq v1, v6, :cond_8

    .line 340
    :cond_7
    iget-object v12, v7, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v12, v5, v1}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 343
    :cond_8
    const/16 v12, 0x19

    invoke-virtual {v15, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    iput v12, v7, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 345
    const/16 v12, 0x1a

    invoke-virtual {v15, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v7, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 348
    const/16 v6, 0x18

    invoke-virtual {v15, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 351
    iget-boolean v12, v7, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v12, :cond_9

    instance-of v12, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_9

    .line 352
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    goto :goto_3

    .line 351
    :cond_9
    const/4 v12, 0x1

    .line 356
    :goto_3
    const/16 v6, 0xd

    invoke-virtual {v15, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v7, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 358
    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 359
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 360
    invoke-virtual {v7, v6}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    :cond_a
    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 364
    .local v12, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 365
    invoke-virtual {v7, v12}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 369
    :cond_b
    move/from16 v18, v0

    .end local v0    # "marginStart":I
    .local v18, "marginStart":I
    iget-object v0, v7, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object v0, v7, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 370
    const/16 v0, 0xa

    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "contentInsetEnd":I
    .local v19, "contentInsetEnd":I
    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 372
    const/16 v0, 0xb

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    .local v0, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 374
    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :cond_c
    const/16 v1, 0xc

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 379
    .local v1, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 380
    invoke-virtual {v7, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 383
    :cond_d
    move-object/from16 v20, v0

    const/4 v0, 0x2

    .end local v0    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v20, "navIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 384
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_e

    .line 385
    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_e
    move-object/from16 v17, v0

    .end local v0    # "logo":Landroid/graphics/drawable/Drawable;
    .local v17, "logo":Landroid/graphics/drawable/Drawable;
    const/16 v0, 0x10

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 389
    .local v0, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 390
    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 393
    :cond_f
    move-object/from16 v21, v0

    .end local v0    # "logoDesc":Ljava/lang/CharSequence;
    .local v21, "logoDesc":Ljava/lang/CharSequence;
    const/16 v0, 0xe

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 394
    move-object/from16 v22, v1

    const/4 v1, -0x1

    .end local v1    # "navDesc":Ljava/lang/CharSequence;
    .local v22, "navDesc":Ljava/lang/CharSequence;
    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    goto :goto_4

    .line 393
    .end local v22    # "navDesc":Ljava/lang/CharSequence;
    .restart local v1    # "navDesc":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v22, v1

    const/4 v1, -0x1

    .line 397
    .end local v1    # "navDesc":Ljava/lang/CharSequence;
    .restart local v22    # "navDesc":Ljava/lang/CharSequence;
    :goto_4
    const/16 v0, 0xf

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 398
    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 400
    :cond_11
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    move/from16 v16, v2

    const/4 v1, 0x1

    .end local v2    # "marginEnd":I
    .local v16, "marginEnd":I
    new-array v2, v1, [I

    const v1, 0x101030b

    move/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "marginTop":I
    .local v23, "marginTop":I
    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 405
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v7, Landroid/widget/Toolbar;->mNavIconResourceId:I

    .line 406
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 408
    iget v1, v7, Landroid/widget/Toolbar;->mNavIconResourceId:I

    const v2, 0x1080bb5

    if-eq v1, v2, :cond_12

    .line 409
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    .line 414
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_12
    iget-boolean v0, v7, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v0, :cond_15

    .line 415
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 417
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v7, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    .line 419
    const v2, 0x1080868

    if-ne v1, v2, :cond_13

    .line 421
    const v1, 0x1080b83

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iput v1, v7, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    goto :goto_5

    .line 424
    :cond_13
    const v2, 0x1080869

    if-ne v1, v2, :cond_14

    .line 426
    const v1, 0x1080b84

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iput v1, v7, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    .line 430
    :cond_14
    :goto_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 433
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_15
    return-void
.end method

.method private greylist-max-o addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2475
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2476
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 2477
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v2

    invoke-static {p2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 2479
    .local v2, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2481
    if-eqz v0, :cond_3

    .line 2482
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2483
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2484
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2485
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2486
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 2487
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2482
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 2491
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 2492
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2493
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2494
    .restart local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2495
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 2496
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2491
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2500
    .end local v3    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method private greylist-max-o addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1843
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1844
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1845
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1846
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v1

    .restart local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1848
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1850
    .restart local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1852
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1853
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1854
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1856
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    :goto_1
    return-void
.end method

.method private greylist-max-o ensureCollapseButtonView()V
    .locals 6

    .line 1809
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, "descriptionText":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1812
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1813
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1814
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1815
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v1

    .line 1816
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v2, 0x800003

    iget v3, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1817
    const/4 v2, 0x2

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1818
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1819
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/Toolbar$4;

    invoke-direct {v3, p0}, Landroid/widget/Toolbar$4;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1838
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private greylist-max-o ensureContentInsets()V
    .locals 1

    .line 2621
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2622
    new-instance v0, Landroid/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroid/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    .line 2624
    :cond_0
    return-void
.end method

.method private greylist-max-o ensureLogoView()V
    .locals 2

    .line 860
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 863
    :cond_0
    return-void
.end method

.method private greylist-max-o ensureMenu()V
    .locals 3

    .line 1457
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 1458
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1460
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 1461
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1462
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter-IA;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1464
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1465
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1467
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private greylist-max-o ensureMenuView()V
    .locals 3

    .line 1470
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1471
    new-instance v0, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 1472
    iget v1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1473
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1474
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1475
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1476
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1477
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1478
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1480
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private greylist-max-o ensureNavButtonView()V
    .locals 5

    .line 1791
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1792
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1793
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1794
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1795
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1797
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private greylist-max-o getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .line 2503
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    .line 2504
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 2505
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2506
    .local v2, "hGrav":I
    packed-switch v2, :pswitch_data_0

    .line 2512
    :pswitch_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    .line 2510
    :pswitch_1
    return v2

    .line 2512
    :cond_0
    const/4 v3, 0x3

    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2424
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2425
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2426
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2427
    .local v3, "alignmentOffset":I
    :goto_0
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2437
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 2438
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 2439
    .local v5, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v6

    .line 2440
    .local v6, "height":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    .line 2441
    .local v7, "space":I
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    .line 2442
    .local v8, "spaceAbove":I
    iget v9, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v8, v9, :cond_1

    .line 2443
    iget v8, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2432
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottom":I
    .end local v6    # "height":I
    .end local v7    # "space":I
    .end local v8    # "spaceAbove":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    return v2

    .line 2429
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    return v2

    .line 2445
    .restart local v4    # "paddingTop":I
    .restart local v5    # "paddingBottom":I
    .restart local v6    # "height":I
    .restart local v7    # "space":I
    .restart local v8    # "spaceAbove":I
    :cond_1
    sub-int v9, v6, v5

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    sub-int/2addr v9, v4

    .line 2447
    .local v9, "spaceBelow":I
    iget v10, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v9, v10, :cond_2

    .line 2448
    iget v10, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v9

    sub-int v10, v8, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2451
    .end local v9    # "spaceBelow":I
    :cond_2
    :goto_1
    add-int v2, v4, v8

    return v2

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .line 2456
    and-int/lit8 v0, p1, 0x70

    .line 2457
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 2463
    iget v1, p0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    .line 2461
    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2521
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2522
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1483
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 1

    .line 1226
    iget v0, p0, Landroid/widget/Toolbar;->mNavigationBarHeight:I

    return v0
.end method

.method private greylist-max-o getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2526
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2527
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2379
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2380
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 2381
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 2382
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2383
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 2384
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2385
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    .line 2386
    .local v7, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v8, v7, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v1

    .line 2387
    .local v8, "l":I
    iget v9, v7, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v2

    .line 2388
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2389
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2390
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2391
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2392
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    .line 2383
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2394
    .end local v5    # "i":I
    :cond_0
    return v3
.end method

.method private greylist-max-o isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2595
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private static greylist-max-o isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 2559
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2399
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2400
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2401
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2402
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2403
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2404
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2405
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2406
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 2407
    return p2
.end method

.method private greylist-max-o layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2412
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2413
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2414
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2415
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2416
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2417
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2418
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2419
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2420
    return p2
.end method

.method private greylist-max-o measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1973
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1975
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1976
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1977
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1978
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1979
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1980
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1981
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1983
    iget v2, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, v4}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1985
    .local v2, "childWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v8, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v4, v8}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1989
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1990
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private greylist-max-o measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1948
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1950
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1953
    .local v1, "childWidthSpec":I
    iget v2, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1957
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1958
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1959
    if-eqz v3, :cond_0

    .line 1960
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1961
    :cond_0
    move v5, p6

    :goto_0
    nop

    .line 1962
    .local v5, "size":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1964
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1965
    return-void
.end method

.method private greylist-max-o postShowOverflowMenu()V
    .locals 1

    .line 1892
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1893
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1894
    return-void
.end method

.method private blacklist setNavigationBarHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 1222
    iput p1, p0, Landroid/widget/Toolbar;->mNavigationBarHeight:I

    .line 1223
    return-void
.end method

.method private blacklist setTooltipOffset(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 1135
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1136
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1137
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 1138
    .local v5, "screenPos":[I
    invoke-virtual {v0, v5}, Landroid/widget/Toolbar;->getLocationOnScreen([I)V

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1141
    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v7

    .line 1146
    .local v7, "height":I
    new-array v8, v4, [I

    .line 1147
    .local v8, "windowPos":[I
    invoke-virtual {v0, v8}, Landroid/widget/Toolbar;->getLocationInWindow([I)V

    .line 1148
    new-array v4, v4, [I

    .line 1149
    .local v4, "windowViewPos":[I
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1150
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1151
    .local v9, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v9}, Landroid/widget/Toolbar;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1153
    const-string/jumbo v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 1154
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 1155
    .local v10, "display":Landroid/view/Display;
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1156
    .local v11, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1158
    const/4 v12, 0x0

    .line 1159
    .local v12, "diff":I
    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 1161
    .local v13, "rotate":I
    const v14, 0x1050244

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    .line 1164
    .local v14, "navigationBarHeight":I
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 1165
    .local v15, "toolBar":Landroid/view/View;
    :goto_0
    instance-of v1, v15, Landroid/widget/Toolbar;

    const/16 v16, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v17, v2

    .end local v2    # "context":Landroid/content/Context;
    .local v17, "context":Landroid/content/Context;
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v18, v10

    .end local v10    # "display":Landroid/view/Display;
    .local v18, "display":Landroid/view/Display;
    iget v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_3

    .line 1167
    aget v1, v5, v16

    aget v2, v8, v16

    sub-int/2addr v1, v2

    iget v2, v9, Landroid/graphics/Rect;->left:I

    sub-int v12, v1, v2

    goto :goto_1

    .line 1165
    .end local v17    # "context":Landroid/content/Context;
    .end local v18    # "display":Landroid/view/Display;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v10    # "display":Landroid/view/Display;
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    .line 1170
    .end local v2    # "context":Landroid/content/Context;
    .end local v10    # "display":Landroid/view/Display;
    .restart local v17    # "context":Landroid/content/Context;
    .restart local v18    # "display":Landroid/view/Display;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    aget v2, v8, v1

    add-int/2addr v2, v7

    .line 1172
    .local v2, "yOffset":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v10

    if-nez v10, :cond_6

    .line 1173
    iget v1, v9, Landroid/graphics/Rect;->right:I

    iget v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v10

    aget v10, v4, v16

    add-int/2addr v10, v6

    sub-int/2addr v1, v10

    sub-int/2addr v1, v12

    .line 1174
    .local v1, "xOffset":I
    const/4 v10, 0x3

    if-ne v13, v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->checkNaviBarForLandscape()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1175
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 1176
    .local v10, "density":F
    move-object/from16 v19, v5

    .end local v5    # "screenPos":[I
    .local v19, "screenPos":[I
    iget v5, v11, Landroid/util/DisplayMetrics;->density:F

    .line 1177
    .local v5, "realDensity":F
    move/from16 v20, v7

    .end local v7    # "height":I
    .local v20, "height":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->getNavigationBarHeight()I

    move-result v7

    if-ge v7, v14, :cond_4

    .line 1178
    int-to-float v7, v14

    div-float/2addr v7, v10

    mul-float/2addr v7, v5

    float-to-int v7, v7

    sub-int v7, v1, v7

    div-int/lit8 v16, v6, 0x2

    sub-int v7, v7, v16

    goto :goto_2

    :cond_4
    int-to-float v7, v14

    div-float/2addr v7, v10

    mul-float/2addr v7, v5

    float-to-int v7, v7

    sub-int v7, v1, v7

    :goto_2
    move v1, v7

    .line 1179
    .end local v5    # "realDensity":F
    .end local v10    # "density":F
    goto :goto_3

    .line 1174
    .end local v19    # "screenPos":[I
    .end local v20    # "height":I
    .local v5, "screenPos":[I
    .restart local v7    # "height":I
    :cond_5
    move-object/from16 v19, v5

    move/from16 v20, v7

    .end local v5    # "screenPos":[I
    .end local v7    # "height":I
    .restart local v19    # "screenPos":[I
    .restart local v20    # "height":I
    goto :goto_3

    .line 1181
    .end local v1    # "xOffset":I
    .end local v19    # "screenPos":[I
    .end local v20    # "height":I
    .restart local v5    # "screenPos":[I
    .restart local v7    # "height":I
    :cond_6
    move-object/from16 v19, v5

    move/from16 v20, v7

    .end local v5    # "screenPos":[I
    .end local v7    # "height":I
    .restart local v19    # "screenPos":[I
    .restart local v20    # "height":I
    aget v5, v4, v16

    sub-int/2addr v5, v6

    .line 1183
    .local v5, "xOffset":I
    if-ne v13, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->checkNaviBarForLandscape()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1184
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1185
    .local v1, "density":F
    iget v7, v11, Landroid/util/DisplayMetrics;->density:F

    .line 1186
    .local v7, "realDensity":F
    int-to-float v10, v14

    div-float/2addr v10, v1

    mul-float/2addr v10, v7

    float-to-int v10, v10

    sub-int/2addr v5, v10

    move v1, v5

    goto :goto_3

    .line 1189
    .end local v1    # "density":F
    .end local v7    # "realDensity":F
    :cond_7
    move v1, v5

    .end local v5    # "xOffset":I
    .local v1, "xOffset":I
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setTooltipPosition(II)V

    .line 1190
    return-void
.end method

.method private greylist-max-o shouldCollapse()Z
    .locals 5

    .line 1997
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1999
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2000
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2001
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2002
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 2003
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 2004
    return v1

    .line 2000
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2007
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2517
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method greylist-max-o addChildrenForExpandedActionView()V
    .locals 3

    .line 2586
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2588
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2589
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2588
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2591
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2592
    return-void
.end method

.method public greylist-max-o canShowOverflowMenu()Z
    .locals 1

    .line 683
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2555
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist checkNaviBarForLandscape()Z
    .locals 10

    .line 1194
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1195
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1197
    .local v1, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1198
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1200
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1201
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1203
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1204
    .local v4, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1206
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 1208
    .local v5, "rotate":I
    const v6, 0x1050244

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 1211
    .local v6, "navigationBarHeight":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v6

    iget v9, v4, Landroid/graphics/Point;->x:I

    if-lt v8, v9, :cond_0

    .line 1212
    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v8}, Landroid/widget/Toolbar;->setNavigationBarHeight(I)V

    .line 1213
    return v7

    .line 1214
    :cond_0
    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    iget v8, v3, Landroid/graphics/Rect;->left:I

    if-gt v8, v6, :cond_1

    .line 1215
    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v8}, Landroid/widget/Toolbar;->setNavigationBarHeight(I)V

    .line 1216
    return v7

    .line 1218
    :cond_1
    const/4 v7, 0x0

    return v7
.end method

.method public whitelist collapseActionView()V
    .locals 1

    .line 890
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 891
    :cond_0
    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    :goto_0
    nop

    .line 892
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 893
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 895
    :cond_1
    return-void
.end method

.method public whitelist dismissPopupMenus()V
    .locals 1

    .line 759
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 762
    :cond_0
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1110
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1119
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTooltipNull(Z)V

    .line 1120
    goto :goto_0

    .line 1113
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTooltipNull(Z)V

    .line 1117
    nop

    .line 1125
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1126
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->setTooltipOffset(Landroid/view/View;)V

    .line 1128
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2550
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2532
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2537
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2538
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2539
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2540
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2541
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2542
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2544
    :cond_2
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1340
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1386
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getContentInsetEnd()I
    .locals 1

    .line 1572
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getContentInsetEndWithActions()I
    .locals 2

    .line 1698
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1699
    goto :goto_0

    .line 1700
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1698
    :goto_0
    return v0
.end method

.method public whitelist getContentInsetLeft()I
    .locals 1

    .line 1616
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getContentInsetRight()I
    .locals 1

    .line 1637
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getContentInsetStart()I
    .locals 1

    .line 1551
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getContentInsetStartWithNavigation()I
    .locals 2

    .line 1654
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1655
    goto :goto_0

    .line 1656
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1654
    :goto_0
    return v0
.end method

.method public whitelist getCurrentContentInsetEnd()I
    .locals 4

    .line 1750
    const/4 v0, 0x0

    .line 1751
    .local v0, "hasActions":Z
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1752
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 1753
    .local v1, "mb":Lcom/android/internal/view/menu/MenuBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 1755
    .end local v1    # "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 1756
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1757
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1755
    :goto_1
    return v1
.end method

.method public whitelist getCurrentContentInsetLeft()I
    .locals 1

    .line 1770
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1772
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1770
    :goto_0
    return v0
.end method

.method public whitelist getCurrentContentInsetRight()I
    .locals 1

    .line 1785
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1787
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1785
    :goto_0
    return v0
.end method

.method public whitelist getCurrentContentInsetStart()I
    .locals 3

    .line 1736
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1738
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1736
    :goto_0
    return v0
.end method

.method public whitelist getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 817
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 856
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .locals 1

    .line 1431
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1432
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1067
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1302
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getNavigationView()Landroid/view/View;
    .locals 1

    .line 1325
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method greylist-max-o getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 1

    .line 2630
    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public whitelist getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1452
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1453
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getPopupContext()Landroid/content/Context;
    .locals 1

    .line 2634
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPopupTheme()I
    .locals 1

    .line 545
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 961
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 904
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitleMarginBottom()I
    .locals 1

    .line 646
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public whitelist getTitleMarginEnd()I
    .locals 1

    .line 623
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public whitelist getTitleMarginStart()I
    .locals 1

    .line 577
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public whitelist getTitleMarginTop()I
    .locals 1

    .line 600
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public greylist-max-o getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .locals 2

    .line 2564
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2565
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2567
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public whitelist hasExpandedActionView()Z
    .locals 1

    .line 876
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hideOverflowMenu()Z
    .locals 1

    .line 716
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 1495
    invoke-direct {p0}, Landroid/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1496
    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isOverflowMenuShowing()Z
    .locals 1

    .line 693
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isTitleTruncated()Z
    .locals 5

    .line 766
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 767
    return v1

    .line 770
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 771
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 772
    return v1

    .line 775
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 776
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 777
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 778
    const/4 v1, 0x1

    return v1

    .line 776
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 781
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 4

    .line 502
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 506
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 507
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 508
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 509
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->setKeyboardNavigationCluster(Z)V

    .line 511
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->setTouchscreenBlocksFocus(Z)V

    goto :goto_1

    .line 516
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 517
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 518
    :cond_1
    :goto_1
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_5

    .line 455
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/widget/Toolbar;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 456
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 457
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 459
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 460
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 461
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Toolbar:[I

    const/4 v6, 0x0

    const v7, 0x10104aa

    invoke-virtual {v4, v6, v5, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 465
    const/16 v4, 0x16

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 466
    if-ltz v2, :cond_0

    .line 467
    iput v2, p0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    .line 469
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 471
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v4, v6, v8, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 473
    const/16 v1, 0x25

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 474
    .end local v2    # "height":I
    .local v1, "height":I
    if-ltz v1, :cond_1

    .line 475
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->setMinimumHeight(I)V

    .line 477
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 479
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10504bf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 480
    .local v2, "width":I
    if-ltz v2, :cond_2

    iget-object v4, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 481
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 484
    :cond_2
    iget-boolean v4, p0, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    if-nez v4, :cond_4

    iget v4, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    if-lez v4, :cond_4

    iget-object v4, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v4, :cond_4

    .line 485
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 486
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    .line 487
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    goto :goto_0

    .line 488
    :cond_3
    if-eqz v4, :cond_4

    .line 489
    iget-object v5, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_0
    iget-boolean v4, p0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    if-eqz v4, :cond_5

    .line 494
    iget-object v4, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 497
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    .end local v1    # "height":I
    .end local v2    # "width":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 1898
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1899
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1900
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2161
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2162
    .local v1, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v4

    .line 2163
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v5

    .line 2164
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 2165
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 2166
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 2167
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 2168
    .local v9, "paddingBottom":I
    move v10, v6

    .line 2169
    .local v10, "left":I
    sub-int v11, v4, v7

    .line 2171
    .local v11, "right":I
    iget-object v12, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 2172
    .local v12, "collapsingMargins":[I
    aput v3, v12, v2

    aput v3, v12, v3

    .line 2175
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    move-result v13

    .line 2176
    .local v13, "minHeight":I
    if-ltz v13, :cond_1

    sub-int v14, p5, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_1

    :cond_1
    move v14, v3

    .line 2178
    .local v14, "alignmentHeight":I
    :goto_1
    iget-object v15, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2179
    if-eqz v1, :cond_2

    .line 2180
    iget-object v15, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_2

    .line 2183
    :cond_2
    iget-object v15, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 2188
    :cond_3
    :goto_2
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2189
    if-eqz v1, :cond_4

    .line 2190
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_3

    .line 2193
    :cond_4
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 2198
    :cond_5
    :goto_3
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2199
    if-eqz v1, :cond_6

    .line 2200
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_4

    .line 2203
    :cond_6
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15, v11, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 2208
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 2209
    .local v15, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    .line 2210
    .local v16, "contentInsetRight":I
    sub-int v2, v15, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v12, v3

    .line 2211
    sub-int v2, v4, v7

    sub-int/2addr v2, v11

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v12, v17

    .line 2212
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2213
    .end local v10    # "left":I
    .local v2, "left":I
    sub-int v10, v4, v7

    sub-int v10, v10, v16

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2215
    .end local v11    # "right":I
    .local v10, "right":I
    iget-object v11, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2216
    if-eqz v1, :cond_8

    .line 2217
    iget-object v11, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_5

    .line 2220
    :cond_8
    iget-object v11, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v2, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 2225
    :cond_9
    :goto_5
    iget-object v11, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2226
    if-eqz v1, :cond_a

    .line 2227
    iget-object v11, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    .line 2230
    :cond_a
    iget-object v11, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v2, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 2235
    :cond_b
    :goto_6
    iget-object v11, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    .line 2236
    .local v11, "layoutTitle":Z
    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    .line 2237
    .local v3, "layoutSubtitle":Z
    const/16 v19, 0x0

    .line 2238
    .local v19, "titleHeight":I
    if-eqz v11, :cond_c

    .line 2239
    move/from16 v20, v13

    .end local v13    # "minHeight":I
    .local v20, "minHeight":I
    iget-object v13, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/Toolbar$LayoutParams;

    .line 2240
    .local v13, "lp":Landroid/widget/Toolbar$LayoutParams;
    move/from16 v21, v15

    .end local v15    # "contentInsetLeft":I
    .local v21, "contentInsetLeft":I
    iget v15, v13, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v22, v7

    .end local v7    # "paddingRight":I
    .local v22, "paddingRight":I
    iget-object v7, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v15, v7

    iget v7, v13, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v7

    add-int v19, v19, v15

    goto :goto_7

    .line 2238
    .end local v20    # "minHeight":I
    .end local v21    # "contentInsetLeft":I
    .end local v22    # "paddingRight":I
    .restart local v7    # "paddingRight":I
    .local v13, "minHeight":I
    .restart local v15    # "contentInsetLeft":I
    :cond_c
    move/from16 v22, v7

    move/from16 v20, v13

    move/from16 v21, v15

    .line 2242
    .end local v7    # "paddingRight":I
    .end local v13    # "minHeight":I
    .end local v15    # "contentInsetLeft":I
    .restart local v20    # "minHeight":I
    .restart local v21    # "contentInsetLeft":I
    .restart local v22    # "paddingRight":I
    :goto_7
    if-eqz v3, :cond_d

    .line 2243
    iget-object v7, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    .line 2244
    .local v7, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v13, v7, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v15, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v13, v15

    iget v15, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    add-int v19, v19, v13

    .line 2247
    .end local v7    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_d
    if-nez v11, :cond_f

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v27, v1

    move/from16 v25, v4

    move/from16 v29, v5

    move/from16 v26, v6

    move/from16 v31, v8

    move/from16 v28, v14

    goto/16 :goto_13

    .line 2249
    :cond_f
    :goto_8
    if-eqz v11, :cond_10

    iget-object v7, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_10
    iget-object v7, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2250
    .local v7, "topChild":Landroid/view/View;
    :goto_9
    if-eqz v3, :cond_11

    iget-object v13, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_a

    :cond_11
    iget-object v13, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 2251
    .local v13, "bottomChild":Landroid/view/View;
    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/Toolbar$LayoutParams;

    .line 2252
    .local v15, "toplp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v24, v7

    .end local v7    # "topChild":Landroid/view/View;
    .local v24, "topChild":Landroid/view/View;
    move-object/from16 v7, v23

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    .line 2253
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    if-eqz v11, :cond_12

    move-object/from16 v23, v13

    .end local v13    # "bottomChild":Landroid/view/View;
    .local v23, "bottomChild":Landroid/view/View;
    iget-object v13, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-gtz v13, :cond_13

    goto :goto_b

    .end local v23    # "bottomChild":Landroid/view/View;
    .restart local v13    # "bottomChild":Landroid/view/View;
    :cond_12
    move-object/from16 v23, v13

    .end local v13    # "bottomChild":Landroid/view/View;
    .restart local v23    # "bottomChild":Landroid/view/View;
    :goto_b
    if-eqz v3, :cond_14

    iget-object v13, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2254
    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-lez v13, :cond_14

    :cond_13
    const/4 v13, 0x1

    goto :goto_c

    :cond_14
    const/4 v13, 0x0

    .line 2256
    .local v13, "titleHasWidth":Z
    :goto_c
    move/from16 v25, v4

    .end local v4    # "width":I
    .local v25, "width":I
    iget v4, v0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 2262
    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .local v26, "paddingLeft":I
    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    .line 2263
    .local v4, "space":I
    sub-int v6, v4, v19

    div-int/lit8 v6, v6, 0x2

    .line 2264
    .local v6, "spaceAbove":I
    move/from16 v27, v4

    .end local v4    # "space":I
    .local v27, "space":I
    iget v4, v15, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v28, v14

    .end local v14    # "alignmentHeight":I
    .local v28, "alignmentHeight":I
    iget v14, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v4, v14

    if-ge v6, v4, :cond_15

    .line 2265
    iget v4, v15, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget v14, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int v6, v4, v14

    move/from16 v29, v5

    goto :goto_d

    .line 2277
    .end local v26    # "paddingLeft":I
    .end local v27    # "space":I
    .end local v28    # "alignmentHeight":I
    .local v6, "paddingLeft":I
    .restart local v14    # "alignmentHeight":I
    :sswitch_0
    sub-int v4, v5, v9

    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    iget v6, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v6

    iget v6, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v4, v6

    sub-int v4, v4, v19

    move/from16 v29, v5

    move/from16 v28, v14

    .local v4, "titleTop":I
    goto :goto_e

    .line 2258
    .end local v4    # "titleTop":I
    .end local v26    # "paddingLeft":I
    .restart local v6    # "paddingLeft":I
    :sswitch_1
    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v4

    iget v6, v15, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v6, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v4, v6

    .line 2259
    .restart local v4    # "titleTop":I
    move/from16 v29, v5

    move/from16 v28, v14

    goto :goto_e

    .line 2267
    .end local v4    # "titleTop":I
    .end local v14    # "alignmentHeight":I
    .local v6, "spaceAbove":I
    .restart local v27    # "space":I
    .restart local v28    # "alignmentHeight":I
    :cond_15
    sub-int v4, v5, v9

    sub-int v4, v4, v19

    sub-int/2addr v4, v6

    sub-int/2addr v4, v8

    .line 2269
    .local v4, "spaceBelow":I
    iget v14, v15, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v29, v5

    .end local v5    # "height":I
    .local v29, "height":I
    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v14, v5

    if-ge v4, v14, :cond_16

    .line 2270
    iget v5, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v14, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v4

    sub-int v5, v6, v5

    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2274
    .end local v4    # "spaceBelow":I
    :cond_16
    :goto_d
    add-int v4, v8, v6

    .line 2275
    .local v4, "titleTop":I
    nop

    .line 2281
    .end local v6    # "spaceAbove":I
    .end local v27    # "space":I
    :goto_e
    if-eqz v1, :cond_1b

    .line 2282
    if-eqz v13, :cond_17

    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    const/4 v6, 0x1

    aget v14, v12, v6

    sub-int/2addr v5, v14

    .line 2283
    .local v5, "rd":I
    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v10, v10, v17

    .line 2284
    move/from16 v27, v1

    .end local v1    # "isRtl":Z
    .local v27, "isRtl":Z
    neg-int v1, v5

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v12, v6

    .line 2285
    move v1, v10

    .line 2286
    .local v1, "titleRight":I
    move v6, v10

    .line 2288
    .local v6, "subtitleRight":I
    if-eqz v11, :cond_18

    .line 2289
    iget-object v14, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/Toolbar$LayoutParams;

    .line 2290
    .local v14, "lp":Landroid/widget/Toolbar$LayoutParams;
    move/from16 v18, v5

    .end local v5    # "rd":I
    .local v18, "rd":I
    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    .line 2291
    .local v5, "titleLeft":I
    move-object/from16 v30, v7

    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .local v30, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2292
    .local v7, "titleBottom":I
    move/from16 v31, v8

    .end local v8    # "paddingTop":I
    .local v31, "paddingTop":I
    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 2293
    iget v8, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v5, v8

    .line 2294
    iget v8, v14, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v8

    goto :goto_10

    .line 2288
    .end local v14    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v18    # "rd":I
    .end local v30    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .local v5, "rd":I
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v8    # "paddingTop":I
    :cond_18
    move/from16 v18, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    .line 2296
    .end local v5    # "rd":I
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .restart local v18    # "rd":I
    .restart local v30    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    :goto_10
    if-eqz v3, :cond_19

    .line 2297
    iget-object v5, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2298
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v7, v5, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    .line 2299
    iget-object v7, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    .line 2300
    .local v7, "subtitleLeft":I
    iget-object v8, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 2301
    .local v8, "subtitleBottom":I
    iget-object v14, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v7, v4, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 2302
    iget v14, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v6, v14

    .line 2303
    iget v14, v5, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v8, v14

    .line 2305
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v7    # "subtitleLeft":I
    .end local v8    # "subtitleBottom":I
    :cond_19
    if-eqz v13, :cond_1a

    .line 2306
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v10, v5

    .line 2308
    .end local v1    # "titleRight":I
    .end local v6    # "subtitleRight":I
    .end local v18    # "rd":I
    :cond_1a
    goto/16 :goto_13

    .line 2309
    .end local v27    # "isRtl":Z
    .end local v30    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .local v1, "isRtl":Z
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .local v8, "paddingTop":I
    :cond_1b
    move/from16 v27, v1

    move-object/from16 v30, v7

    move/from16 v31, v8

    .end local v1    # "isRtl":Z
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .restart local v27    # "isRtl":Z
    .restart local v30    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    if-eqz v13, :cond_1c

    iget v14, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_11

    :cond_1c
    const/4 v14, 0x0

    :goto_11
    const/4 v1, 0x0

    aget v5, v12, v1

    sub-int/2addr v14, v5

    .line 2310
    .local v14, "ld":I
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 2311
    neg-int v5, v14

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v12, v1

    .line 2312
    move v1, v2

    .line 2313
    .local v1, "titleLeft":I
    move v5, v2

    .line 2315
    .local v5, "subtitleLeft":I
    if-eqz v11, :cond_1d

    .line 2316
    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    .line 2317
    .local v6, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    .line 2318
    .local v7, "titleRight":I
    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 2319
    .local v8, "titleBottom":I
    move/from16 v18, v2

    .end local v2    # "left":I
    .local v18, "left":I
    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 2320
    iget v2, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v1, v7, v2

    .line 2321
    iget v2, v6, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v8, v2

    goto :goto_12

    .line 2315
    .end local v6    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v7    # "titleRight":I
    .end local v8    # "titleBottom":I
    .end local v18    # "left":I
    .restart local v2    # "left":I
    :cond_1d
    move/from16 v18, v2

    .line 2323
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :goto_12
    if-eqz v3, :cond_1e

    .line 2324
    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 2325
    .local v2, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    .line 2326
    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 2327
    .local v6, "subtitleRight":I
    iget-object v7, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2328
    .local v7, "subtitleBottom":I
    iget-object v8, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 2329
    iget v8, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v5, v6, v8

    .line 2330
    iget v8, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v8

    .line 2332
    .end local v2    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v6    # "subtitleRight":I
    .end local v7    # "subtitleBottom":I
    :cond_1e
    if-eqz v13, :cond_1f

    .line 2333
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v18    # "left":I
    .local v2, "left":I
    goto :goto_13

    .line 2332
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :cond_1f
    move/from16 v2, v18

    .line 2341
    .end local v1    # "titleLeft":I
    .end local v4    # "titleTop":I
    .end local v5    # "subtitleLeft":I
    .end local v13    # "titleHasWidth":Z
    .end local v14    # "ld":I
    .end local v15    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .end local v18    # "left":I
    .end local v23    # "bottomChild":Landroid/view/View;
    .end local v24    # "topChild":Landroid/view/View;
    .end local v30    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v2    # "left":I
    :goto_13
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2342
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2343
    .local v1, "leftViewsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_20

    .line 2344
    iget-object v5, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v6, v28

    .end local v28    # "alignmentHeight":I
    .local v6, "alignmentHeight":I
    invoke-direct {v0, v5, v2, v12, v6}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 2343
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .end local v6    # "alignmentHeight":I
    .restart local v28    # "alignmentHeight":I
    :cond_20
    move/from16 v6, v28

    .line 2348
    .end local v4    # "i":I
    .end local v28    # "alignmentHeight":I
    .restart local v6    # "alignmentHeight":I
    iget-object v4, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2349
    iget-object v4, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2350
    .local v4, "rightViewsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_21

    .line 2351
    iget-object v7, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {v0, v7, v10, v12, v6}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    .line 2350
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 2357
    .end local v5    # "i":I
    :cond_21
    iget-object v5, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2358
    iget-object v5, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v12}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v5

    .line 2359
    .local v5, "centerViewsWidth":I
    sub-int v7, v25, v26

    sub-int v7, v7, v22

    div-int/lit8 v7, v7, 0x2

    add-int v7, v26, v7

    .line 2360
    .local v7, "parentCenter":I
    div-int/lit8 v8, v5, 0x2

    .line 2361
    .local v8, "halfCenterViewsWidth":I
    sub-int v13, v7, v8

    .line 2362
    .local v13, "centerLeft":I
    add-int v14, v13, v5

    .line 2363
    .local v14, "centerRight":I
    if-ge v13, v2, :cond_22

    .line 2364
    move v13, v2

    goto :goto_16

    .line 2365
    :cond_22
    if-le v14, v10, :cond_23

    .line 2366
    sub-int v15, v14, v10

    sub-int/2addr v13, v15

    .line 2369
    :cond_23
    :goto_16
    iget-object v15, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2370
    .local v15, "centerViewsCount":I
    const/16 v17, 0x0

    move/from16 v32, v17

    move/from16 v17, v1

    move/from16 v1, v32

    .local v1, "i":I
    .local v17, "leftViewsCount":I
    :goto_17
    if-ge v1, v15, :cond_24

    .line 2371
    move/from16 v18, v2

    .end local v2    # "left":I
    .restart local v18    # "left":I
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v13, v12, v6}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 2370
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v18

    goto :goto_17

    .line 2375
    .end local v1    # "i":I
    .end local v18    # "left":I
    .restart local v2    # "left":I
    :cond_24
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2376
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2012
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 2013
    .local v8, "width":I
    const/4 v9, 0x0

    .line 2014
    .local v9, "height":I
    const/4 v10, 0x0

    .line 2016
    .local v10, "childState":I
    iget-object v11, v7, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 2019
    .local v11, "collapsingMargins":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    const/4 v0, 0x1

    .line 2021
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    move v12, v0

    move v13, v1

    .local v1, "marginEndIndex":I
    goto :goto_0

    .line 2023
    .end local v0    # "marginStartIndex":I
    .end local v1    # "marginEndIndex":I
    :cond_0
    const/4 v0, 0x0

    .line 2024
    .restart local v0    # "marginStartIndex":I
    const/4 v1, 0x1

    move v12, v0

    move v13, v1

    .line 2029
    .end local v0    # "marginStartIndex":I
    .local v12, "marginStartIndex":I
    .local v13, "marginEndIndex":I
    :goto_0
    const/4 v14, 0x0

    .line 2030
    .local v14, "navWidth":I
    iget-object v0, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2031
    iget-object v1, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 2033
    iget-object v0, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 2034
    iget-object v0, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 2035
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2034
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2036
    iget-object v0, v7, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 2039
    :cond_1
    iget-object v0, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    iget-object v1, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 2042
    iget-object v0, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 2043
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 2044
    iget-object v0, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 2045
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2044
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2046
    iget-object v0, v7, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 2049
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v15

    .line 2050
    .local v15, "contentInsetStart":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 2051
    sub-int v0, v15, v14

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v12

    .line 2053
    const/16 v16, 0x0

    .line 2054
    .local v16, "menuWidth":I
    iget-object v0, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2055
    iget-object v1, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v4, v7, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v17, v4

    move/from16 v4, p2

    move/from16 v18, v12

    move v12, v6

    .end local v12    # "marginStartIndex":I
    .local v18, "marginStartIndex":I
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 2057
    iget-object v0, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 2058
    iget-object v0, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 2059
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2058
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2060
    iget-object v0, v7, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v6, v16

    goto :goto_1

    .line 2054
    .end local v18    # "marginStartIndex":I
    .restart local v12    # "marginStartIndex":I
    :cond_3
    move/from16 v18, v12

    move v12, v6

    .end local v12    # "marginStartIndex":I
    .restart local v18    # "marginStartIndex":I
    move/from16 v6, v16

    .line 2063
    .end local v16    # "menuWidth":I
    .local v6, "menuWidth":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v5

    .line 2064
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 2065
    sub-int v0, v5, v6

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v13

    .line 2067
    iget-object v0, v7, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2068
    iget-object v1, v7, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move/from16 v17, v5

    .end local v5    # "contentInsetEnd":I
    .local v17, "contentInsetEnd":I
    move/from16 v5, v16

    move/from16 v16, v6

    .end local v6    # "menuWidth":I
    .restart local v16    # "menuWidth":I
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 2070
    iget-object v0, v7, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2071
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2070
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2072
    iget-object v0, v7, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_2

    .line 2067
    .end local v16    # "menuWidth":I
    .end local v17    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "menuWidth":I
    :cond_4
    move/from16 v17, v5

    move/from16 v16, v6

    .line 2075
    .end local v5    # "contentInsetEnd":I
    .end local v6    # "menuWidth":I
    .restart local v16    # "menuWidth":I
    .restart local v17    # "contentInsetEnd":I
    :goto_2
    iget-object v0, v7, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2076
    iget-object v1, v7, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 2078
    iget-object v0, v7, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 2079
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2078
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2080
    iget-object v0, v7, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 2083
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v6

    .line 2084
    .local v6, "childCount":I
    const/4 v0, 0x0

    move v5, v10

    move v10, v9

    move v9, v8

    move v8, v0

    .local v5, "childState":I
    .local v8, "i":I
    .local v9, "width":I
    .local v10, "height":I
    :goto_3
    if-ge v8, v6, :cond_8

    .line 2085
    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2086
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2087
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v0, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_7

    invoke-direct {v7, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2089
    move v12, v5

    move/from16 v19, v6

    goto :goto_4

    .line 2092
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v20, v3

    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .local v20, "lp":Landroid/widget/Toolbar$LayoutParams;
    move v3, v9

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    move/from16 v4, p2

    move v12, v5

    .end local v5    # "childState":I
    .local v12, "childState":I
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "childCount":I
    .local v19, "childCount":I
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v9, v0

    .line 2094
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v21

    .end local v21    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2095
    .end local v10    # "height":I
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v2

    move v10, v0

    move v5, v2

    .end local v12    # "childState":I
    .local v2, "childState":I
    goto :goto_5

    .line 2087
    .end local v0    # "height":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v19    # "childCount":I
    .end local v20    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childState":I
    .restart local v6    # "childCount":I
    .restart local v10    # "height":I
    :cond_7
    move-object/from16 v20, v3

    move-object v1, v4

    move v12, v5

    move/from16 v19, v6

    .line 2084
    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childState":I
    .end local v6    # "childCount":I
    .restart local v12    # "childState":I
    .restart local v19    # "childCount":I
    :goto_4
    move v5, v12

    .end local v12    # "childState":I
    .restart local v5    # "childState":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    const/4 v12, 0x0

    goto :goto_3

    .end local v19    # "childCount":I
    .restart local v6    # "childCount":I
    :cond_8
    move v12, v5

    move/from16 v19, v6

    .line 2098
    .end local v5    # "childState":I
    .end local v6    # "childCount":I
    .end local v8    # "i":I
    .restart local v12    # "childState":I
    .restart local v19    # "childCount":I
    const/4 v8, 0x0

    .line 2099
    .local v8, "titleWidth":I
    const/16 v20, 0x0

    .line 2100
    .local v20, "titleHeight":I
    iget v0, v7, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int v21, v0, v1

    .line 2101
    .local v21, "titleVertMargins":I
    iget v0, v7, Landroid/widget/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v23, v0, v1

    .line 2102
    .local v23, "titleHorizMargins":I
    iget-object v0, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2104
    iget-boolean v0, v7, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_b

    .line 2105
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v7, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2107
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 2109
    .local v1, "value":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 2110
    .local v2, "textSize":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2112
    iget-object v3, v7, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    .line 2113
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 2115
    .local v3, "fontScale":F
    iget v5, v7, Landroid/widget/Toolbar;->mMaxFontScale:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    .line 2116
    iget v3, v7, Landroid/widget/Toolbar;->mMaxFontScale:F

    .line 2118
    :cond_9
    iget-object v5, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    mul-float v6, v2, v3

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2120
    .end local v3    # "fontScale":F
    goto :goto_6

    .line 2121
    :cond_a
    iget-object v3, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2124
    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    .end local v1    # "value":Landroid/util/TypedValue;
    .end local v2    # "textSize":F
    :cond_b
    :goto_6
    iget-object v1, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v9, v23

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v21

    const/16 v22, 0x0

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 2127
    .end local v8    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v8, v1, v2

    .line 2128
    .end local v0    # "titleWidth":I
    .restart local v8    # "titleWidth":I
    iget-object v0, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v20, v0, v1

    .line 2129
    iget-object v0, v7, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v5

    move v12, v5

    .end local v12    # "childState":I
    .restart local v5    # "childState":I
    goto :goto_7

    .line 2102
    .end local v5    # "childState":I
    .restart local v12    # "childState":I
    :cond_c
    const/16 v22, 0x0

    .line 2131
    :goto_7
    iget-object v0, v7, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2132
    iget-object v1, v7, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v9, v23

    add-int v5, v20, v21

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2136
    iget-object v0, v7, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2137
    invoke-direct {v7, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 2138
    iget-object v0, v7, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v0, v20

    goto :goto_8

    .line 2131
    :cond_d
    move/from16 v0, v20

    .line 2141
    .end local v20    # "titleHeight":I
    .local v0, "titleHeight":I
    :goto_8
    add-int/2addr v9, v8

    .line 2142
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2146
    .end local v10    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 2147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2149
    nop

    .line 2150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v12

    .line 2149
    move/from16 v4, p1

    invoke-static {v2, v4, v3}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v2

    .line 2152
    .local v2, "measuredWidth":I
    nop

    .line 2153
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v12, 0x10

    .line 2152
    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v3

    .line 2156
    .local v3, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->shouldCollapse()Z

    move-result v5

    if-eqz v5, :cond_e

    move/from16 v5, v22

    goto :goto_9

    :cond_e
    move v5, v3

    :goto_9
    invoke-virtual {v7, v2, v5}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    .line 2157
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1875
    move-object v0, p1

    check-cast v0, Landroid/widget/Toolbar$SavedState;

    .line 1876
    .local v0, "ss":Landroid/widget/Toolbar$SavedState;
    invoke-virtual {v0}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1878
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1879
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v2, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1880
    iget v2, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1881
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 1882
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1886
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    iget-boolean v2, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_2

    .line 1887
    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    .line 1889
    :cond_2
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 663
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 664
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 665
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 666
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1862
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1864
    .local v0, "state":Landroid/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1865
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1868
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1870
    return-object v0
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1941
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1944
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1910
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1911
    iput-boolean v1, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1914
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1915
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1916
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1917
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1921
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1922
    :cond_2
    iput-boolean v1, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1925
    :cond_3
    return v3
.end method

.method greylist-max-o removeChildrenForExpandedActionView()V
    .locals 6

    .line 2571
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2573
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2574
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2575
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2577
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2579
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeViewAt(I)V

    .line 2580
    iget-object v4, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2583
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setCollapseContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1354
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    .line 1355
    return-void
.end method

.method public whitelist setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1371
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1372
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1374
    :cond_1
    return-void
.end method

.method public whitelist setCollapseIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1400
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1401
    return-void
.end method

.method public whitelist setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1414
    if-eqz p1, :cond_0

    .line 1415
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1416
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 2604
    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    .line 2605
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2606
    return-void
.end method

.method public whitelist setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .line 1716
    if-gez p1, :cond_0

    .line 1717
    const/high16 p1, -0x80000000

    .line 1719
    :cond_0
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1720
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1721
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1722
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 1725
    :cond_1
    return-void
.end method

.method public whitelist setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .line 1673
    if-gez p1, :cond_0

    .line 1674
    const/high16 p1, -0x80000000

    .line 1676
    :cond_0
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1677
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1678
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1679
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 1682
    :cond_1
    return-void
.end method

.method public whitelist setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1594
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 1595
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1596
    return-void
.end method

.method public whitelist setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1529
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 1530
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1531
    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 678
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 679
    return-void
.end method

.method public whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 794
    if-eqz p1, :cond_0

    .line 795
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 796
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 801
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 804
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :cond_2
    return-void
.end method

.method public whitelist setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 829
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 830
    return-void
.end method

.method public whitelist setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 844
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 847
    :cond_1
    return-void
.end method

.method public greylist-max-o setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/widget/ActionMenuPresenter;

    .line 721
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 722
    return-void

    .line 725
    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 726
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 727
    .local v0, "oldMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    .line 728
    return-void

    .line 731
    :cond_1
    if-eqz v0, :cond_2

    .line 732
    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 733
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 736
    :cond_2
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 737
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter-IA;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 740
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 741
    if-eqz p1, :cond_4

    .line 742
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 743
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 745
    :cond_4
    iget-object v3, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 746
    iget-object v3, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 747
    invoke-virtual {p2, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 748
    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 750
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 751
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 752
    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 753
    return-void
.end method

.method public greylist-max-o setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2613
    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2614
    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2615
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2616
    invoke-virtual {v0, p1, p2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2618
    :cond_0
    return-void
.end method

.method public whitelist setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1081
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1082
    return-void
.end method

.method public whitelist setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1095
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1098
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1099
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 1102
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->setTooltipOffset(Landroid/view/View;)V

    .line 1106
    :cond_1
    return-void
.end method

.method public whitelist setNavigationIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 1246
    iget v0, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    if-lez v0, :cond_0

    const v1, 0x1080bb5

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    goto :goto_0

    .line 1251
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    .line 1254
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    return-void
.end method

.method public whitelist setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1272
    if-eqz p1, :cond_1

    .line 1274
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1275
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    .line 1279
    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1280
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1281
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1285
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1287
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1290
    :cond_3
    return-void
.end method

.method public whitelist setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1315
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1316
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1317
    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1507
    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1508
    return-void
.end method

.method public whitelist setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1441
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1442
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1443
    return-void
.end method

.method public whitelist setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 528
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 529
    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    .line 530
    if-nez p1, :cond_0

    .line 531
    iget-object v0, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 533
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 536
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 972
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 973
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 984
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 985
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 986
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 987
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 988
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 989
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 990
    iget-object v2, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 992
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 993
    iget-object v2, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 996
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 997
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 999
    :cond_2
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1000
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1001
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1003
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1004
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_4
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 1007
    return-void
.end method

.method public whitelist setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 1025
    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 1026
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1029
    :cond_0
    return-void
.end method

.method public whitelist setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1049
    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    .line 1050
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1053
    :cond_0
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 916
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 917
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 928
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 929
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 930
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 931
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 932
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 933
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 934
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 935
    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 937
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 938
    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 941
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 942
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 944
    :cond_2
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 946
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 949
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    :cond_4
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 952
    return-void
.end method

.method public whitelist setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 562
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 563
    iput p2, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 564
    iput p3, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 565
    iput p4, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 567
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 568
    return-void
.end method

.method public whitelist setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 657
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 658
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 659
    return-void
.end method

.method public whitelist setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 634
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 636
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 637
    return-void
.end method

.method public whitelist setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 588
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 590
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 591
    return-void
.end method

.method public whitelist setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 611
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 613
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 614
    return-void
.end method

.method public whitelist setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 1014
    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 1015
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1018
    :cond_0
    return-void
.end method

.method public whitelist setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1037
    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    .line 1038
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    :cond_0
    return-void
.end method

.method public whitelist showOverflowMenu()Z
    .locals 1

    .line 707
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
