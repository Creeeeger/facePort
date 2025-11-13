.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o CHECKED_STATE_SET:[I

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field private static final greylist-max-o MONOSPACE:I = 0x3

.field private static final greylist-max-o SANS:I = 0x1

.field private static final blacklist SEM_THUMB_ANIMATION_DURATION:I = 0x1f4

.field private static final greylist-max-o SERIF:I = 0x2

.field private static final greylist-max-o THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final greylist-max-o THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TOUCH_MODE_DOWN:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_DRAGGING:I = 0x2

.field private static final greylist-max-o TOUCH_MODE_IDLE:I


# instance fields
.field private greylist-max-o mHasThumbTint:Z

.field private greylist-max-o mHasThumbTintMode:Z

.field private greylist-max-o mHasTrackTint:Z

.field private greylist-max-o mHasTrackTintMode:Z

.field private blacklist mIsMetaDataInActivity:Z

.field private blacklist mIsSamsungBasicInteraction:Z

.field private blacklist mIsSupportSemSwitchVI:Z

.field private blacklist mIsThemeChanged:Z

.field private greylist-max-o mMinFlingVelocity:I

.field private greylist mOffLayout:Landroid/text/Layout;

.field private greylist mOnLayout:Landroid/text/Layout;

.field private greylist-max-o mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mShowText:Z

.field private greylist-max-o mSplitTrack:Z

.field private greylist-max-o mSwitchBottom:I

.field private greylist mSwitchHeight:I

.field private greylist-max-o mSwitchLeft:I

.field private greylist-max-r mSwitchMinWidth:I

.field private greylist-max-o mSwitchPadding:I

.field private greylist-max-o mSwitchRight:I

.field private greylist-max-o mSwitchTop:I

.field private greylist-max-o mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private greylist mSwitchWidth:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTextColors:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTextOff:Ljava/lang/CharSequence;

.field private greylist-max-o mTextOn:Ljava/lang/CharSequence;

.field private greylist-max-o mTextPaint:Landroid/text/TextPaint;

.field private blacklist mThumbBlendMode:Landroid/graphics/BlendMode;

.field private greylist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mThumbPosition:F

.field private greylist-max-o mThumbTextPadding:I

.field private greylist-max-o mThumbTintList:Landroid/content/res/ColorStateList;

.field private greylist mThumbWidth:I

.field private greylist-max-o mTouchMode:I

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTouchX:F

.field private greylist-max-o mTouchY:F

.field private blacklist mTrackBlendMode:Landroid/graphics/BlendMode;

.field private greylist mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mTrackTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mUseFallbackLineSpacing:Z

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThumbPosition(Landroid/widget/Switch;)F
    .locals 0

    iget p0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetThumbPosition(Landroid/widget/Switch;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    .line 1757
    new-instance v0, Landroid/widget/Switch$1;

    const-string/jumbo v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 231
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 246
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 266
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    const/4 v9, 0x0

    iput-object v9, v7, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 124
    iput-object v9, v7, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 125
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 126
    iput-boolean v10, v7, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 130
    iput-object v9, v7, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 131
    iput-object v9, v7, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    .line 132
    iput-boolean v10, v7, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 133
    iput-boolean v10, v7, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 149
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 200
    iput-boolean v10, v7, Landroid/widget/Switch;->mIsSupportSemSwitchVI:Z

    .line 203
    sget-boolean v0, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    iput-boolean v0, v7, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    .line 204
    iput-boolean v10, v7, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 268
    new-instance v0, Landroid/text/TextPaint;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v7, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 271
    .local v12, "res":Landroid/content/res/Resources;
    iget-object v0, v7, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 272
    iget-object v0, v7, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 274
    sget-object v0, Lcom/android/internal/R$styleable;->Switch:[I

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v8, v13, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 276
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->Switch:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v9, v6

    .end local v6    # "a":Landroid/content/res/TypedArray;
    .local v9, "a":Landroid/content/res/TypedArray;
    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Switch;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 279
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 280
    .local v0, "switchTheme":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    invoke-virtual {v1, v2, v0, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 283
    invoke-direct/range {p0 .. p1}, Landroid/widget/Switch;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 284
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 286
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 287
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "SamsungBasicInteraction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "data":Ljava/lang/String;
    const-string v4, "SEP10"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    const-string v4, "SEP11"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v11

    :goto_1
    iput-boolean v4, v7, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    .line 295
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "data":Ljava/lang/String;
    :cond_2
    iget-boolean v2, v7, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    const/4 v3, 0x2

    if-nez v2, :cond_3

    iget-boolean v2, v7, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    if-eqz v2, :cond_5

    .line 296
    :cond_3
    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v4, 0x1080aed

    if-ne v2, v4, :cond_5

    .line 298
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_4

    const v2, 0x10809d8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 299
    :cond_4
    const v2, 0x10809d9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    iput-object v2, v7, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 301
    :cond_5
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 304
    :goto_3
    iget-object v2, v7, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 305
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 309
    :cond_6
    iget-boolean v2, v7, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    const/4 v3, 0x4

    if-nez v2, :cond_7

    iget-boolean v2, v7, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    if-eqz v2, :cond_9

    .line 310
    :cond_7
    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v4, 0x1080af3

    if-ne v2, v4, :cond_9

    .line 312
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_8

    const v2, 0x10809e2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4

    .line 313
    :cond_8
    const v2, 0x10809e3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_4
    iput-object v2, v7, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 315
    :cond_9
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    :goto_5
    iget-object v2, v7, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 319
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 323
    :cond_a
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 324
    .local v2, "themeValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200b9

    invoke-virtual {v3, v4, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 325
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_c

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_b

    move v4, v11

    goto :goto_6

    :cond_b
    move v4, v10

    :goto_6
    iput-boolean v4, v7, Landroid/widget/Switch;->mIsThemeChanged:Z

    .line 330
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_c
    iget-boolean v3, v7, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    if-nez v3, :cond_d

    iget-boolean v3, v7, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    if-eqz v3, :cond_e

    :cond_d
    iget-boolean v3, v7, Landroid/widget/Switch;->mIsThemeChanged:Z

    if-nez v3, :cond_e

    .line 331
    const v3, 0x10809e7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    const v3, 0x10809e6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 333
    iget-object v4, v7, Landroid/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    .line 337
    iput-boolean v11, v7, Landroid/widget/Switch;->mIsSupportSemSwitchVI:Z

    .line 342
    :cond_e
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 343
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 344
    const/16 v3, 0xb

    invoke-virtual {v9, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/widget/Switch;->mShowText:Z

    .line 345
    const/4 v3, 0x7

    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v7, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 347
    const/4 v3, 0x5

    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v7, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 349
    const/4 v3, 0x6

    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v7, Landroid/widget/Switch;->mSwitchPadding:I

    .line 351
    const/16 v3, 0x8

    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/widget/Switch;->mSplitTrack:Z

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_f

    move v3, v11

    goto :goto_7

    :cond_f
    move v3, v10

    :goto_7
    iput-boolean v3, v7, Landroid/widget/Switch;->mUseFallbackLineSpacing:Z

    .line 355
    const/16 v3, 0x9

    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 357
    .local v3, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_10

    .line 358
    iput-object v3, v7, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 359
    iput-boolean v11, v7, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 361
    :cond_10
    const/16 v4, 0xa

    .line 362
    const/4 v5, -0x1

    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 361
    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v4

    .line 364
    .local v4, "thumbTintMode":Landroid/graphics/BlendMode;
    iget-object v6, v7, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    if-eq v6, v4, :cond_11

    .line 365
    iput-object v4, v7, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 366
    iput-boolean v11, v7, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 368
    :cond_11
    iget-boolean v6, v7, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v6, :cond_12

    iget-boolean v6, v7, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v6, :cond_13

    .line 369
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 372
    :cond_13
    const/16 v6, 0xc

    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 374
    .local v6, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_14

    .line 375
    iput-object v6, v7, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 376
    iput-boolean v11, v7, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 378
    :cond_14
    const/16 v10, 0xd

    .line 379
    invoke-virtual {v9, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 378
    const/4 v10, 0x0

    invoke-static {v5, v10}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v5

    .line 381
    .local v5, "trackTintMode":Landroid/graphics/BlendMode;
    iget-object v10, v7, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    if-eq v10, v5, :cond_15

    .line 382
    iput-object v5, v7, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    .line 383
    iput-boolean v11, v7, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 385
    :cond_15
    iget-boolean v10, v7, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v10, :cond_16

    iget-boolean v10, v7, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v10, :cond_17

    .line 386
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 389
    :cond_17
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 391
    .local v10, "appearance":I
    if-eqz v10, :cond_18

    .line 392
    invoke-virtual {v7, v8, v10}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 394
    :cond_18
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 397
    .local v11, "config":Landroid/view/ViewConfiguration;
    move-object/from16 v16, v0

    .end local v0    # "switchTheme":Landroid/util/TypedValue;
    .local v16, "switchTheme":Landroid/util/TypedValue;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, v7, Landroid/widget/Switch;->mTouchSlop:I

    .line 398
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, v7, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->setDefaultStateDescription()V

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 406
    return-void
.end method

.method private greylist-max-o animateThumbToCheckedState(Z)V
    .locals 5
    .param p1, "newCheckedState"    # Z

    .line 1311
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1312
    .local v0, "targetPosition":F
    :goto_0
    sget-object v1, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1314
    iget-boolean v3, p0, Landroid/widget/Switch;->mIsSupportSemSwitchVI:Z

    if-eqz v3, :cond_1

    .line 1315
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c0025

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1316
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 1319
    :cond_1
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1321
    :goto_1
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1322
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1323
    return-void
.end method

.method private greylist-max-o applyThumbTint()V
    .locals 2

    .line 950
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    .line 951
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 953
    iget-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 954
    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 957
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 963
    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 964
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 967
    :cond_3
    return-void
.end method

.method private greylist-max-o applyTrackTint()V
    .locals 2

    .line 769
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v1, :cond_3

    .line 770
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 772
    iget-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-eqz v1, :cond_1

    .line 773
    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 776
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 782
    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 786
    :cond_3
    return-void
.end method

.method private greylist cancelPositionAnimator()V
    .locals 1

    .line 1327
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1330
    :cond_0
    return-void
.end method

.method private greylist-max-o cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1271
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1272
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1273
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1274
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1275
    return-void
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1771
    const/4 v0, 0x0

    .line 1772
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 1773
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1775
    .local v2, "count":I
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 1776
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1777
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 1779
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    .line 1780
    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    .line 1782
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1784
    :cond_2
    return-object v0
.end method

.method private greylist-max-o getTargetCheckedState()Z
    .locals 2

    .line 1333
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o getThumbOffset()I
    .locals 3

    .line 1635
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/Switch;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_0

    .line 1638
    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 1640
    .restart local v0    # "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private greylist-max-o getThumbScrollRange()I
    .locals 4

    .line 1644
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1645
    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1646
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1649
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1650
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Insets;
    goto :goto_0

    .line 1652
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1655
    .restart local v0    # "insets":Landroid/graphics/Insets;
    :goto_0
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1658
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1175
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1176
    return v1

    .line 1180
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v0

    .line 1182
    .local v0, "thumbOffset":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1183
    iget v2, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v3, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 1184
    .local v2, "thumbTop":I
    iget v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 1185
    .local v4, "thumbLeft":I
    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int/2addr v3, v5

    .line 1187
    .local v3, "thumbRight":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchBottom:I

    add-int/2addr v6, v5

    .line 1188
    .local v6, "thumbBottom":I
    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    int-to-float v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private greylist-max-o makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1160
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    .line 1161
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1162
    :cond_0
    move-object v0, p1

    :goto_0
    nop

    .line 1164
    .local v0, "transformed":Ljava/lang/CharSequence;
    nop

    .line 1165
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Switch;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    .line 1164
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1166
    .local v1, "width":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v4, v2, v3, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/Switch;->mUseFallbackLineSpacing:Z

    .line 1167
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 1168
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 1166
    return-object v2
.end method

.method private greylist-max-o setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 481
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 477
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 478
    goto :goto_0

    .line 473
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 474
    nop

    .line 485
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 486
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .line 1343
    iput p1, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 1344
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1345
    return-void
.end method

.method private greylist-max-o stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1283
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1288
    .local v1, "commitChange":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    .line 1290
    .local v3, "oldState":Z
    if-eqz v1, :cond_4

    .line 1291
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1292
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 1293
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 1294
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    cmpg-float v5, v4, v6

    if-gez v5, :cond_2

    goto :goto_1

    :cond_1
    cmpl-float v5, v4, v6

    if-lez v5, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    move v2, v0

    .local v2, "newState":Z
    :goto_2
    goto :goto_3

    .line 1296
    .end local v2    # "newState":Z
    :cond_3
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v2

    .line 1298
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_3
    goto :goto_4

    .line 1299
    .end local v2    # "newState":Z
    :cond_4
    move v2, v3

    .line 1302
    .restart local v2    # "newState":Z
    :goto_4
    if-eq v2, v3, :cond_5

    .line 1303
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->playSoundEffect(I)V

    .line 1306
    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1307
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1308
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1446
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1447
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 1448
    .local v1, "switchLeft":I
    iget v2, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1449
    .local v2, "switchTop":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 1450
    .local v3, "switchRight":I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1452
    .local v4, "switchBottom":I
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1455
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1456
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .local v6, "thumbInsets":Landroid/graphics/Insets;
    goto :goto_0

    .line 1458
    .end local v6    # "thumbInsets":Landroid/graphics/Insets;
    :cond_0
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1462
    .restart local v6    # "thumbInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v7, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 1463
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1466
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1469
    move v7, v1

    .line 1470
    .local v7, "trackLeft":I
    move v8, v2

    .line 1471
    .local v8, "trackTop":I
    move v9, v3

    .line 1472
    .local v9, "trackRight":I
    move v10, v4

    .line 1473
    .local v10, "trackBottom":I
    sget-object v11, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v6, v11, :cond_4

    .line 1474
    iget v11, v6, Landroid/graphics/Insets;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_1

    .line 1475
    iget v11, v6, Landroid/graphics/Insets;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 1477
    :cond_1
    iget v11, v6, Landroid/graphics/Insets;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_2

    .line 1478
    iget v11, v6, Landroid/graphics/Insets;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1480
    :cond_2
    iget v11, v6, Landroid/graphics/Insets;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_3

    .line 1481
    iget v11, v6, Landroid/graphics/Insets;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 1483
    :cond_3
    iget v11, v6, Landroid/graphics/Insets;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_4

    .line 1484
    iget v11, v6, Landroid/graphics/Insets;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1487
    :cond_4
    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1491
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_5
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    .line 1492
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1494
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 1495
    .local v7, "thumbLeft":I
    iget v8, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1498
    .local v8, "thumbRight":I
    iget-boolean v9, p0, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    if-eqz v9, :cond_7

    .line 1499
    :cond_6
    move v7, v5

    .line 1500
    iget v9, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int v8, v5, v9

    .line 1504
    :cond_7
    iget-object v9, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1506
    invoke-virtual {p0}, Landroid/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1507
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_8

    .line 1508
    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1513
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1514
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1695
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1697
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1701
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1702
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1704
    :cond_1
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 5

    .line 1673
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1675
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1676
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1678
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1679
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1680
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1683
    :cond_0
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1684
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1685
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1688
    :cond_1
    if-eqz v1, :cond_2

    .line 1689
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1691
    :cond_2
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1731
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1356
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040d1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1359
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040d1e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public whitelist getCompoundPaddingLeft()I
    .locals 2

    .line 1605
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1608
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1609
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1610
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1612
    :cond_1
    return v0
.end method

.method public whitelist getCompoundPaddingRight()I
    .locals 2

    .line 1617
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1620
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1621
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1622
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1624
    :cond_1
    return v0
.end method

.method public whitelist getShowText()Z
    .locals 1

    .line 1062
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    return v0
.end method

.method public whitelist getSplitTrack()Z
    .locals 1

    .line 991
    iget-boolean v0, p0, Landroid/widget/Switch;->mSplitTrack:Z

    return v0
.end method

.method public whitelist getSwitchMinWidth()I
    .locals 1

    .line 583
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public whitelist getSwitchPadding()I
    .locals 1

    .line 556
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public whitelist getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 1025
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 1001
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 836
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getThumbTextPadding()I
    .locals 1

    .line 608
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public whitelist getThumbTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 946
    iget-object v0, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 887
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 933
    invoke-virtual {p0}, Landroid/widget/Switch;->getThumbTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 934
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 656
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTrackTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 765
    iget-object v0, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 706
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 752
    invoke-virtual {p0}, Landroid/widget/Switch;->getTrackTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 753
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 1713
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1715
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1719
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1720
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1723
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1724
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1727
    :cond_2
    return-void
.end method

.method synthetic blacklist lambda$setThumbIconAsync$3$android-widget-Switch(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 854
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setThumbResourceAsync$2$android-widget-Switch(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 823
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setTrackIconAsync$1$android-widget-Switch(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 673
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setTrackResourceAsync$0$android-widget-Switch(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 644
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 1664
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1665
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1666
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1668
    :cond_0
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1520
    iget-object v2, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1521
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1522
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1523
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1525
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1528
    :goto_0
    iget v4, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1529
    .local v4, "switchTop":I
    iget v5, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1530
    .local v5, "switchBottom":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 1531
    .local v6, "switchInnerTop":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 1533
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1534
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    if-eqz v3, :cond_7

    .line 1535
    iget-boolean v10, v0, Landroid/widget/Switch;->mSplitTrack:Z

    if-eqz v10, :cond_1

    if-eqz v8, :cond_1

    .line 1536
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v10

    .line 1537
    .local v10, "insets":Landroid/graphics/Insets;
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1538
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Insets;->left:I

    add-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Rect;->left:I

    .line 1539
    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v10, Landroid/graphics/Insets;->right:I

    sub-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Rect;->right:I

    .line 1541
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1542
    .local v11, "saveCount":I
    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1543
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1544
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1545
    .end local v10    # "insets":Landroid/graphics/Insets;
    .end local v11    # "saveCount":I
    goto :goto_4

    .line 1546
    :cond_1
    iget-boolean v10, v0, Landroid/widget/Switch;->mIsSupportSemSwitchVI:Z

    if-eqz v10, :cond_6

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroid/widget/Switch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v10, v0, Landroid/widget/Switch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1549
    .local v10, "overDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1551
    iget v11, v0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1552
    .local v11, "alpha":I
    const/16 v12, 0xff

    if-le v11, v12, :cond_3

    goto :goto_2

    :cond_3
    if-gez v11, :cond_4

    move v12, v9

    goto :goto_2

    :cond_4
    move v12, v11

    :goto_2
    move v11, v12

    .line 1553
    rsub-int v12, v11, 0xff

    .line 1556
    .local v12, "r_alpah":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1557
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1558
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 1560
    :cond_5
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1561
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1563
    :goto_3
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1564
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1566
    .end local v10    # "overDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "alpha":I
    .end local v12    # "r_alpah":I
    goto :goto_4

    .line 1567
    :cond_6
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1572
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1574
    .local v10, "saveCount":I
    if-eqz v8, :cond_8

    .line 1575
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    goto :goto_5

    :cond_9
    iget-object v11, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 1579
    .local v11, "switchText":Landroid/text/Layout;
    :goto_5
    if-eqz v11, :cond_c

    .line 1580
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v12

    .line 1581
    .local v12, "drawableState":[I
    iget-object v13, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_a

    .line 1582
    iget-object v14, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v12, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    invoke-virtual {v14, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 1584
    :cond_a
    iget-object v9, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v12, v9, Landroid/text/TextPaint;->drawableState:[I

    .line 1587
    if-eqz v8, :cond_b

    .line 1588
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 1589
    .local v9, "bounds":Landroid/graphics/Rect;
    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 1590
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_6

    .line 1591
    .end local v13    # "cX":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getWidth()I

    move-result v13

    .line 1594
    .restart local v13    # "cX":I
    :goto_6
    div-int/lit8 v9, v13, 0x2

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v9, v14

    .line 1595
    .local v9, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1596
    .local v14, "top":I
    int-to-float v15, v9

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1597
    invoke-virtual {v11, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1600
    .end local v9    # "left":I
    .end local v12    # "drawableState":[I
    .end local v13    # "cX":I
    .end local v14    # "top":I
    :cond_c
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1601
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1390
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 1394
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1395
    iget-object v2, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1396
    .local v2, "trackPadding":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1397
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1399
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1402
    :goto_0
    iget-object v3, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 1403
    .local v3, "insets":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1404
    iget v4, v3, Landroid/graphics/Insets;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1409
    .end local v2    # "trackPadding":Landroid/graphics/Rect;
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1410
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 1411
    .local v2, "switchLeft":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .local v3, "switchRight":I
    goto :goto_1

    .line 1413
    .end local v2    # "switchLeft":I
    .end local v3    # "switchRight":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v2, v1

    .line 1414
    .restart local v3    # "switchRight":I
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v2, v3, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 1419
    .restart local v2    # "switchLeft":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1422
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v5

    .line 1423
    .local v5, "switchTop":I
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int/2addr v4, v5

    .line 1424
    .local v4, "switchBottom":I
    goto :goto_2

    .line 1433
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1434
    .restart local v4    # "switchBottom":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v5, v4, v5

    .restart local v5    # "switchTop":I
    goto :goto_2

    .line 1427
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    .line 1429
    .local v4, "switchTop":I
    add-int/2addr v5, v4

    .line 1430
    .local v5, "switchBottom":I
    move v7, v5

    move v5, v4

    move v4, v7

    .line 1438
    .local v4, "switchBottom":I
    .local v5, "switchTop":I
    :goto_2
    iput v2, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 1439
    iput v5, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1440
    iput v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1441
    iput v3, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 1442
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1067
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 1072
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 1073
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 1077
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1080
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1082
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1083
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1084
    .local v1, "thumbWidth":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_0

    .line 1086
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_2
    const/4 v1, 0x0

    .line 1087
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 1091
    .restart local v2    # "thumbHeight":I
    :goto_0
    iget-boolean v3, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v3, :cond_3

    .line 1092
    iget-object v3, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_1

    .line 1095
    .end local v3    # "maxTextWidth":I
    :cond_3
    const/4 v3, 0x0

    .line 1098
    .restart local v3    # "maxTextWidth":I
    :goto_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 1101
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 1102
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1103
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_2

    .line 1105
    .end local v4    # "trackHeight":I
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1106
    const/4 v4, 0x0

    .line 1111
    .restart local v4    # "trackHeight":I
    :goto_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 1112
    .local v5, "paddingLeft":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 1113
    .local v6, "paddingRight":I
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 1114
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v7

    .line 1115
    .local v7, "inset":Landroid/graphics/Insets;
    iget v8, v7, Landroid/graphics/Insets;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1116
    iget v8, v7, Landroid/graphics/Insets;->right:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1121
    .end local v7    # "inset":Landroid/graphics/Insets;
    :cond_5
    iget-boolean v7, p0, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Landroid/widget/Switch;->mIsMetaDataInActivity:Z

    if-eqz v7, :cond_6

    goto :goto_3

    .line 1125
    :cond_6
    iget v7, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    iget v8, p0, Landroid/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, "switchWidth":I
    goto :goto_4

    .line 1122
    .end local v7    # "switchWidth":I
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105054b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1123
    .local v7, "mTwSwitchWidth":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1124
    .local v7, "switchWidth":I
    nop

    .line 1129
    :goto_4
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1130
    .local v8, "switchHeight":I
    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 1131
    iput v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 1133
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 1135
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v9

    .line 1136
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_8

    .line 1137
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 1139
    :cond_8
    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1144
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1147
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040d1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "textOn":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040d1e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "textOff":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1154
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v2, :cond_1

    .line 1155
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_1
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .locals 5
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 1739
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 1741
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1742
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1743
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1744
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1745
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1747
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1748
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 1755
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1193
    iget-object v0, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1195
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1208
    :pswitch_0
    iget v3, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 1228
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1229
    .local v1, "x":F
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    .line 1230
    .local v3, "thumbScrollRange":I
    iget v4, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v4, v1, v4

    .line 1232
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 1233
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_0

    .line 1237
    .end local v7    # "dPos":F
    :cond_0
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    const/high16 v7, -0x40800000    # -1.0f

    .line 1239
    .restart local v7    # "dPos":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1240
    neg-float v7, v7

    .line 1242
    :cond_2
    iget v8, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    .line 1243
    .local v5, "newPos":F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 1244
    iput v1, p0, Landroid/widget/Switch;->mTouchX:F

    .line 1245
    invoke-direct {p0, v5}, Landroid/widget/Switch;->setThumbPosition(F)V

    .line 1247
    :cond_3
    return v2

    .line 1214
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1215
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1216
    .local v4, "y":F
    iget v5, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    iget v5, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v5, v4, v5

    .line 1217
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 1218
    :cond_4
    iput v1, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1219
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1220
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 1221
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    .line 1222
    return v2

    .line 1211
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    nop

    .line 1250
    :cond_5
    :goto_1
    goto :goto_2

    .line 1255
    :pswitch_4
    iget v3, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v3, v1, :cond_6

    .line 1256
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 1258
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1259
    return v2

    .line 1261
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1262
    iget-object v1, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 1197
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1198
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1199
    .local v3, "y":F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v1, v3}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1200
    iput v2, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1201
    iput v1, p0, Landroid/widget/Switch;->mTouchX:F

    .line 1202
    iput v3, p0, Landroid/widget/Switch;->mTouchY:F

    .line 1267
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist semSetSamsungBasicInteraction()V
    .locals 1

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mIsSamsungBasicInteraction:Z

    .line 414
    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setCheckedAsync"
    .end annotation

    .line 1366
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Landroid/widget/Switch;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Landroid/widget/Switch;->isTemporarilyDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->performHapticFeedback(I)Z

    .line 1373
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1377
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 1379
    invoke-virtual {p0}, Landroid/widget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    invoke-direct {p0, p1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 1383
    :cond_1
    invoke-direct {p0}, Landroid/widget/Switch;->cancelPositionAnimator()V

    .line 1384
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(F)V

    .line 1386
    :goto_1
    return-void
.end method

.method public whitelist setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1050
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 1051
    iput-boolean p1, p0, Landroid/widget/Switch;->mShowText:Z

    .line 1052
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 1054
    :cond_0
    return-void
.end method

.method public whitelist setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 980
    iput-boolean p1, p0, Landroid/widget/Switch;->mSplitTrack:Z

    .line 981
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 982
    return-void
.end method

.method public whitelist setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 569
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 570
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 571
    return-void
.end method

.method public whitelist setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 543
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 544
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 545
    return-void
.end method

.method public whitelist setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 423
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 424
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 430
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 432
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 433
    iput-object v1, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 439
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 441
    .local v3, "ts":I
    if-eqz v3, :cond_1

    .line 442
    int-to-float v4, v3

    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 443
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 444
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 450
    :cond_1
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 452
    .local v6, "typefaceIndex":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 455
    .local v5, "styleIndex":I
    invoke-direct {p0, v6, v5}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 457
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 459
    .local v2, "allCaps":Z
    if-eqz v2, :cond_2

    .line 460
    new-instance v7, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 461
    invoke-interface {v7, v4}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_1

    .line 463
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 466
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 467
    return-void
.end method

.method public whitelist setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 526
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 527
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 529
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 530
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 532
    :cond_0
    return-void
.end method

.method public whitelist setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 495
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    .line 496
    if-nez p1, :cond_0

    .line 497
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 499
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 502
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 504
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 505
    .local v2, "typefaceStyle":I
    :goto_1
    not-int v3, v2

    and-int/2addr v3, p2

    .line 506
    .local v3, "need":I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 507
    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 508
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_2

    .line 509
    :cond_4
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 510
    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 513
    :goto_2
    return-void
.end method

.method public whitelist setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1035
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1036
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 1039
    invoke-virtual {p0}, Landroid/widget/Switch;->setDefaultStateDescription()V

    .line 1040
    return-void
.end method

.method public whitelist setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1011
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 1012
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 1015
    invoke-virtual {p0}, Landroid/widget/Switch;->setDefaultStateDescription()V

    .line 1016
    return-void
.end method

.method public whitelist setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 797
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 798
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 800
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 801
    if-eqz p1, :cond_1

    .line 802
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 804
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 805
    return-void
.end method

.method public whitelist setThumbIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setThumbIconAsync"
    .end annotation

    .line 848
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    return-void
.end method

.method public blacklist setThumbIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 853
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 854
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setThumbResourceAsync"
    .end annotation

    .line 817
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    return-void
.end method

.method public blacklist setThumbResourceAsync(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "resId"    # I

    .line 822
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 823
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 595
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 596
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 597
    return-void
.end method

.method public whitelist setThumbTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 918
    iput-object p1, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 921
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 922
    return-void
.end method

.method public whitelist setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 873
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 876
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 877
    return-void
.end method

.method public whitelist setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 902
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 903
    return-void
.end method

.method public whitelist setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 619
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 620
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 622
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 623
    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 626
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 627
    return-void
.end method

.method public whitelist setTrackIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setTrackIconAsync"
    .end annotation

    .line 667
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    return-void
.end method

.method public blacklist setTrackIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 672
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 673
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setTrackResourceAsync"
    .end annotation

    .line 638
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    return-void
.end method

.method public blacklist setTrackResourceAsync(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "resId"    # I

    .line 643
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 644
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setTrackTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 737
    iput-object p1, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 740
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 741
    return-void
.end method

.method public whitelist setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 692
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 695
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 696
    return-void
.end method

.method public whitelist setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 721
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 722
    return-void
.end method

.method public whitelist toggle()V
    .locals 1

    .line 1349
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1350
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1708
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
