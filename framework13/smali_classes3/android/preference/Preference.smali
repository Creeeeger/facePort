.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;,
        Landroid/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DEFAULT_ORDER:I = 0x7fffffff

.field protected static final blacklist FONT_SCALE_LARGE:F = 1.3f

.field protected static final blacklist FONT_SCALE_MEDIUM:F = 1.1f

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_NAME:Ljava/lang/String; = "SamsungBasicInteraction"

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_VALUE_SEP10:Ljava/lang/String; = "SEP10"

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_VALUE_SEP11:Ljava/lang/String; = "SEP11"


# instance fields
.field private greylist-max-o mBaseMethodCalled:Z

.field private blacklist mCategoryBGColor:I

.field private blacklist mColorPrimaryDark:Landroid/content/res/ColorStateList;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultValue:Ljava/lang/Object;

.field private greylist-max-o mDependencyKey:Ljava/lang/String;

.field private greylist-max-o mDependencyMet:Z

.field private greylist-max-o mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFragment:Ljava/lang/String;

.field private greylist-max-o mHasSingleLineTitleAttr:Z

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIconResId:I

.field private greylist-max-o mIconSpaceReserved:Z

.field private greylist-max-o mId:J

.field private greylist-max-o mIntent:Landroid/content/Intent;

.field private blacklist mIsChangedCategoryBG:Z

.field blacklist mIsDeviceDefault:Z

.field blacklist mIsDeviceDefaultDark:Z

.field private blacklist mIsMetaDataInActivity:Z

.field private blacklist mIsSummaryColorPrimaryDark:Z

.field private greylist-max-o mKey:Ljava/lang/String;

.field private greylist mLayoutResId:I

.field private greylist-max-o mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private greylist-max-o mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private greylist-max-o mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private greylist-max-o mOrder:I

.field private greylist-max-o mParentDependencyMet:Z

.field private greylist-max-o mParentGroup:Landroid/preference/PreferenceGroup;

.field private greylist-max-o mPersistent:Z

.field private greylist-max-o mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

.field private greylist-max-o mPreferenceManager:Landroid/preference/PreferenceManager;

.field private greylist-max-o mRecycleEnabled:Z

.field private greylist-max-o mRequiresKey:Z

.field private greylist-max-o mSelectable:Z

.field private greylist-max-o mShouldDisableView:Z

.field private greylist-max-o mSingleLineTitle:Z

.field private greylist mSummary:Ljava/lang/CharSequence;

.field private blacklist mTextColorSecondary:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleRes:I

.field private blacklist mWhere:I

.field private greylist mWidgetLayoutResId:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 489
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 479
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 480
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 462
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const v0, 0x7fffffff

    iput v0, p0, Landroid/preference/Preference;->mOrder:I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 164
    iput-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 166
    iput-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 169
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 170
    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 171
    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 173
    iput-boolean v0, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    .line 177
    sget-boolean v1, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    iput-boolean v1, p0, Landroid/preference/Preference;->mIsMetaDataInActivity:Z

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    .line 193
    iput-boolean v1, p0, Landroid/preference/Preference;->mIsDeviceDefaultDark:Z

    .line 199
    iput-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 201
    const v2, 0x10900f2

    iput v2, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 206
    iput-boolean v1, p0, Landroid/preference/Preference;->mIsSummaryColorPrimaryDark:Z

    .line 221
    iput-boolean v1, p0, Landroid/preference/Preference;->mIsChangedCategoryBG:Z

    .line 222
    iput v1, p0, Landroid/preference/Preference;->mCategoryBGColor:I

    .line 223
    iput v1, p0, Landroid/preference/Preference;->mWhere:I

    .line 327
    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 329
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 331
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 332
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 333
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 401
    :pswitch_0
    iget-boolean v5, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    goto/16 :goto_1

    .line 396
    :pswitch_1
    iget-boolean v5, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    .line 397
    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 398
    goto/16 :goto_1

    .line 392
    :pswitch_2
    iget-boolean v5, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 393
    goto/16 :goto_1

    .line 356
    :pswitch_3
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 357
    goto/16 :goto_1

    .line 388
    :pswitch_4
    iget-boolean v5, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 389
    goto :goto_1

    .line 384
    :pswitch_5
    invoke-virtual {p0, v2, v4}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 385
    goto :goto_1

    .line 380
    :pswitch_6
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 381
    goto :goto_1

    .line 364
    :pswitch_7
    iget v5, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 365
    goto :goto_1

    .line 352
    :pswitch_8
    iget v5, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mOrder:I

    .line 353
    goto :goto_1

    .line 348
    :pswitch_9
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 349
    goto :goto_1

    .line 339
    :pswitch_a
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 340
    goto :goto_1

    .line 372
    :pswitch_b
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 373
    goto :goto_1

    .line 343
    :pswitch_c
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 344
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 345
    goto :goto_1

    .line 360
    :pswitch_d
    iget v5, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 361
    goto :goto_1

    .line 368
    :pswitch_e
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 369
    goto :goto_1

    .line 376
    :pswitch_f
    iget-boolean v5, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 377
    goto :goto_1

    .line 335
    :pswitch_10
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mIconResId:I

    .line 336
    nop

    .line 331
    .end local v4    # "attr":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 405
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 408
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 409
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200b9

    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 411
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200ba

    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 413
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_3

    :cond_2
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Landroid/preference/Preference;->mIsDeviceDefaultDark:Z

    .line 415
    iget-boolean v4, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v4, :cond_4

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010038

    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 417
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v4, :cond_3

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    .line 421
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106096e

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 421
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/Preference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    .line 427
    :cond_4
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/preference/Preference;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 428
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v4, :cond_7

    .line 429
    invoke-virtual {v4}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 430
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_7

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    .line 431
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "SamsungBasicInteraction"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "data":Ljava/lang/String;
    const-string v7, "SEP10"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 433
    const-string v7, "SEP11"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    nop

    :goto_5
    iput-boolean v0, p0, Landroid/preference/Preference;->mIsMetaDataInActivity:Z

    .line 438
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "data":Ljava/lang/String;
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o dispatchSetInitialValue()V
    .locals 4

    .line 1726
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1728
    return-void

    .line 1732
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1733
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1738
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1734
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1735
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1740
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2342
    const/4 v0, 0x0

    .line 2343
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 2344
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 2346
    .local v2, "count":I
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 2347
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 2348
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 2350
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    .line 2351
    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    .line 2353
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2355
    :cond_2
    return-object v0
.end method

.method private greylist-max-o registerDependency()V
    .locals 4

    .line 1532
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1534
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1535
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 1536
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    .line 1541
    return-void

    .line 1538
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist registerDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    .line 1581
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1585
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1588
    return-void
.end method

.method private blacklist semGetSummaryColorToColorPrimaryDark()Z
    .locals 1

    .line 2316
    iget-boolean v0, p0, Landroid/preference/Preference;->mIsSummaryColorPrimaryDark:Z

    return v0
.end method

.method private greylist-max-o setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 842
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 844
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 845
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 846
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 847
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 846
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 850
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 1766
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    goto :goto_0

    .line 1769
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1776
    .end local v0    # "unused":Ljava/lang/AbstractMethodError;
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o unregisterDependency()V
    .locals 1

    .line 1544
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1546
    .local v0, "oldDependency":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1547
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    .line 1550
    .end local v0    # "oldDependency":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private greylist-max-o unregisterDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    .line 1599
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1600
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1602
    :cond_0
    return-void
.end method


# virtual methods
.method greylist-max-o assignParent(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "parentGroup"    # Landroid/preference/PreferenceGroup;

    .line 1527
    iput-object p1, p0, Landroid/preference/Preference;->mParentGroup:Landroid/preference/PreferenceGroup;

    .line 1528
    return-void
.end method

.method protected whitelist callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

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

.method public whitelist compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .line 1438
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1440
    sub-int/2addr v0, v1

    return v0

    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1443
    const/4 v0, 0x0

    return v0

    .line 1444
    :cond_1
    if-nez v0, :cond_2

    .line 1445
    const/4 v0, 0x1

    return v0

    .line 1446
    :cond_2
    if-nez v1, :cond_3

    .line 1447
    const/4 v0, -0x1

    return v0

    .line 1450
    :cond_3
    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result p1

    return p1
.end method

.method greylist-max-o dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2209
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2211
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 2212
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2213
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2214
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2215
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2220
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2156
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2158
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2159
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .line 2163
    if-eqz v0, :cond_1

    .line 2164
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2160
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2167
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1567
    :cond_0
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    .line 1564
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 1353
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getDependency()Ljava/lang/String;
    .locals 1

    .line 1690
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1404
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1408
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0

    .line 1405
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 589
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 592
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method greylist-max-o getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2118
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2119
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 2120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2122
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2123
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2130
    :cond_2
    return-object v0
.end method

.method public whitelist getFragment()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 963
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 966
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method greylist getId()J
    .locals 2

    .line 1152
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 524
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    .line 1185
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLayoutResource()I
    .locals 1

    .line 633
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public whitelist getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .line 1274
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public whitelist getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .line 1292
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public whitelist getOrder()I
    .locals 1

    .line 879
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method public whitelist getParent()Landroid/preference/PreferenceGroup;
    .locals 1

    .line 1701
    iget-object v0, p0, Landroid/preference/Preference;->mParentGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method protected whitelist getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "defaultReturnValue"    # Z

    .line 2088
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2089
    return p1

    .line 2092
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 2093
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 2094
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 2097
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected whitelist getPersistedFloat(F)F
    .locals 3
    .param p1, "defaultReturnValue"    # F

    .line 1980
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    return p1

    .line 1984
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1985
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1986
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1

    .line 1989
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected whitelist getPersistedInt(I)I
    .locals 3
    .param p1, "defaultReturnValue"    # I

    .line 1926
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    return p1

    .line 1930
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1931
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1932
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1935
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected whitelist getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .line 2034
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2035
    return-wide p1

    .line 2038
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 2039
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 2040
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1

    .line 2043
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method protected whitelist getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .line 1819
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    return-object p1

    .line 1823
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1824
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1825
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1828
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1872
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1873
    return-object p1

    .line 1876
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1877
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1878
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1881
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPreferenceDataStore()Landroid/preference/PreferenceDataStore;
    .locals 1

    .line 574
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 575
    return-object v0

    .line 576
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    .line 580
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .line 1491
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public whitelist getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1376
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1380
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 1377
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getShouldDisableView()Z
    .locals 1

    .line 1070
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 976
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 926
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitleDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 2300
    iget-object v0, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitleRes()I
    .locals 1

    .line 916
    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public whitelist getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, "tempConvertView":Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 682
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 687
    iget-boolean v1, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v1, :cond_1

    instance-of v1, p0, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 689
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const v3, 0x1040e32

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    :cond_1
    return-object p1
.end method

.method public whitelist getWidgetLayoutResource()I
    .locals 1

    .line 661
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public whitelist hasKey()Z
    .locals 1

    .line 1208
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist hasRTL()Z
    .locals 1

    .line 2320
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isIconSpaceReserved()Z
    .locals 1

    .line 1142
    iget-boolean v0, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public whitelist isPersistent()Z
    .locals 1

    .line 1219
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method blacklist isRTL()Z
    .locals 3

    .line 2324
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2325
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public whitelist isRecycleEnabled()Z
    .locals 1

    .line 1100
    iget-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    return v0
.end method

.method public whitelist isSelectable()Z
    .locals 1

    .line 1045
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public whitelist isSingleLineTitle()Z
    .locals 1

    .line 1122
    iget-boolean v0, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method protected whitelist notifyChanged()V
    .locals 1

    .line 1469
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1470
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    .line 1472
    :cond_0
    return-void
.end method

.method public whitelist notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .line 1612
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1614
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1615
    return-void

    .line 1618
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1619
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1620
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1622
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected whitelist notifyHierarchyChanged()V
    .locals 1

    .line 1480
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1481
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    .line 1483
    :cond_0
    return-void
.end method

.method protected whitelist onAttachedToActivity()V
    .locals 0

    .line 1517
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1518
    return-void
.end method

.method protected whitelist onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .line 1501
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1503
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    .line 1505
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    .line 1506
    return-void
.end method

.method protected whitelist onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 744
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 746
    .local v0, "titleView":Landroid/widget/TextView;
    iget-boolean v1, p0, Landroid/preference/Preference;->mIsMetaDataInActivity:Z

    if-eqz v1, :cond_2

    .line 747
    instance-of v1, p0, Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_1

    .line 748
    iget-boolean v1, p0, Landroid/preference/Preference;->mIsChangedCategoryBG:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/preference/Preference;->mWhere:I

    if-eqz v1, :cond_0

    .line 749
    const/16 v1, 0xf

    iget v2, p0, Landroid/preference/Preference;->mCategoryBGColor:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 751
    :cond_0
    iget v1, p0, Landroid/preference/Preference;->mWhere:I

    invoke-virtual {p1, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    goto :goto_0

    .line 752
    :cond_1
    iget-boolean v1, p0, Landroid/preference/Preference;->mIsChangedCategoryBG:Z

    if-eqz v1, :cond_2

    .line 753
    iget v1, p0, Landroid/preference/Preference;->mCategoryBGColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 757
    :cond_2
    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 758
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 760
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitleDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 762
    .local v4, "titleDescription":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 764
    iget-boolean v5, p0, Landroid/preference/Preference;->mIsMetaDataInActivity:Z

    if-eqz v5, :cond_3

    instance-of v5, p0, Landroid/preference/PreferenceCategory;

    if-nez v5, :cond_3

    .line 765
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 766
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 767
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 770
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-boolean v5, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v5, :cond_6

    .line 773
    iget-boolean v5, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    .line 777
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, p0, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_5

    .line 778
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 782
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    .end local v3    # "title":Ljava/lang/CharSequence;
    .end local v4    # "titleDescription":Ljava/lang/CharSequence;
    :cond_6
    :goto_1
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 788
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_b

    .line 789
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    .line 790
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 791
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-boolean v5, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v5, :cond_9

    .line 794
    invoke-direct {p0}, Landroid/preference/Preference;->semGetSummaryColorToColorPrimaryDark()Z

    move-result v5

    if-nez v5, :cond_8

    instance-of v5, p0, Landroid/preference/ListPreference;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 796
    :cond_7
    iget-object v5, p0, Landroid/preference/Preference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_9

    .line 797
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 795
    :cond_8
    :goto_2
    iget-object v5, p0, Landroid/preference/Preference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 801
    :cond_9
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 803
    :cond_a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_b
    :goto_4
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 808
    .local v4, "imageView":Landroid/widget/ImageView;
    const/4 v5, 0x4

    if-eqz v4, :cond_11

    .line 809
    iget v6, p0, Landroid/preference/Preference;->mIconResId:I

    if-nez v6, :cond_c

    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_e

    .line 810
    :cond_c
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_d

    .line 811
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 813
    :cond_d
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_e

    .line 814
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    :cond_e
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f

    .line 818
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 820
    :cond_f
    iget-boolean v6, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_10

    move v6, v5

    goto :goto_5

    :cond_10
    move v6, v1

    :goto_5
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    :cond_11
    :goto_6
    const v6, 0x102003e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 825
    .local v6, "imageFrame":Landroid/view/View;
    if-eqz v6, :cond_14

    .line 826
    iget-object v7, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_12

    .line 827
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 829
    :cond_12
    iget-boolean v2, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v2, :cond_13

    move v1, v5

    :cond_13
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 833
    :cond_14
    :goto_7
    iget-boolean v1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_15

    .line 834
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 836
    :cond_15
    return-void
.end method

.method protected whitelist onClick()V
    .locals 0

    .line 1162
    return-void
.end method

.method protected whitelist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 714
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 715
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 717
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 719
    .local v1, "layout":Landroid/view/View;
    nop

    .line 720
    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 721
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 722
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_0

    .line 723
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 725
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 728
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .line 1631
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1632
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 1635
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1637
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1639
    :cond_0
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-p onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onParentChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .line 1648
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1649
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 1652
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1654
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1656
    :cond_0
    return-void
.end method

.method protected whitelist onPrepareForRemoval()V
    .locals 0

    .line 1711
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1712
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2234
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 2182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2183
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1763
    return-void
.end method

.method public whitelist peekExtras()Landroid/os/Bundle;
    .locals 1

    .line 600
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist performClick(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .line 1306
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    return-void

    .line 1310
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    .line 1312
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    return-void

    .line 1316
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 1317
    .local v0, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v0, :cond_2

    .line 1318
    nop

    .line 1319
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1320
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 1321
    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    return-void

    .line 1326
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1327
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1328
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1330
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method protected whitelist persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .line 2057
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    const/4 v0, 0x0

    return v0

    .line 2061
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2063
    return v1

    .line 2066
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 2067
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 2068
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2070
    :cond_2
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2071
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2072
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 2074
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected whitelist persistFloat(F)Z
    .locals 4
    .param p1, "value"    # F

    .line 1949
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1950
    const/4 v0, 0x0

    return v0

    .line 1953
    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1955
    return v1

    .line 1958
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1959
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1960
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1962
    :cond_2
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1963
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1964
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1966
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected whitelist persistInt(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 1895
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1896
    const/4 v0, 0x0

    return v0

    .line 1899
    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1901
    return v1

    .line 1904
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1905
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1906
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1908
    :cond_2
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1909
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1910
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1912
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected whitelist persistLong(J)Z
    .locals 4
    .param p1, "value"    # J

    .line 2003
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2004
    const/4 v0, 0x0

    return v0

    .line 2007
    :cond_0
    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2009
    return v1

    .line 2012
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 2013
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 2014
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 2016
    :cond_2
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2017
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2018
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 2020
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected whitelist persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1788
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    const/4 v0, 0x0

    return v0

    .line 1793
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1795
    return v1

    .line 1798
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1799
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1800
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1802
    :cond_2
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1803
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1804
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1806
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public whitelist persistStringSet(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1841
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    const/4 v0, 0x0

    return v0

    .line 1846
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1848
    return v1

    .line 1851
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    .line 1852
    .local v0, "dataStore":Landroid/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1853
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1855
    :cond_2
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1856
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1857
    invoke-direct {p0, v2}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1859
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method greylist-max-o requireKey()V
    .locals 2

    .line 1195
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    .line 1200
    return-void

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2195
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2196
    return-void
.end method

.method public whitelist saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2142
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 2143
    return-void
.end method

.method public whitelist semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0
    .param p1, "color"    # Z

    .line 2312
    iput-boolean p1, p0, Landroid/preference/Preference;->mIsSummaryColorPrimaryDark:Z

    .line 2313
    return-void
.end method

.method blacklist setCategoryBGColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 2335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mIsChangedCategoryBG:Z

    .line 2336
    iput p1, p0, Landroid/preference/Preference;->mCategoryBGColor:I

    .line 2337
    return-void
.end method

.method public whitelist setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 1722
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1723
    return-void
.end method

.method public whitelist setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .line 1676
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1679
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1680
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1681
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1008
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1009
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 1012
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1014
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1016
    :cond_0
    return-void
.end method

.method public whitelist setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .line 533
    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 950
    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_0

    .line 951
    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    .line 952
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 954
    :cond_0
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 936
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 937
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 939
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 941
    :cond_2
    return-void
.end method

.method public whitelist setIconSpaceReserved(Z)V
    .locals 0
    .param p1, "iconSpaceReserved"    # Z

    .line 1131
    iput-boolean p1, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    .line 1132
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1133
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 515
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 516
    return-void
.end method

.method public whitelist setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1171
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 1173
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    .line 1176
    :cond_0
    return-void
.end method

.method public whitelist setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 618
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 623
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 624
    return-void
.end method

.method final greylist setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1462
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1463
    return-void
.end method

.method public whitelist setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1264
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1265
    return-void
.end method

.method public whitelist setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1283
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1284
    return-void
.end method

.method public whitelist setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .line 864
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 865
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    .line 868
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 870
    :cond_0
    return-void
.end method

.method public whitelist setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .line 1242
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 1243
    return-void
.end method

.method public whitelist setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Landroid/preference/PreferenceDataStore;

    .line 557
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    .line 558
    return-void
.end method

.method public whitelist setRecycleEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1088
    iput-boolean p1, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 1089
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1090
    return-void
.end method

.method blacklist setRoundCorner(I)V
    .locals 0
    .param p1, "where"    # I

    .line 2331
    iput p1, p0, Landroid/preference/Preference;->mWhere:I

    .line 2332
    return-void
.end method

.method public whitelist setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .line 1033
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 1034
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 1035
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1037
    :cond_0
    return-void
.end method

.method public whitelist setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .line 1059
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 1060
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1061
    return-void
.end method

.method public whitelist setSingleLineTitle(Z)V
    .locals 1
    .param p1, "singleLineTitle"    # Z

    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 1111
    iput-boolean p1, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    .line 1112
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1113
    return-void
.end method

.method public whitelist setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 998
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 999
    return-void
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 985
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 986
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 987
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 989
    :cond_2
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 903
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 904
    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 905
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 889
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 891
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 892
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 894
    :cond_2
    return-void
.end method

.method public blacklist setTitleDescription(I)V
    .locals 1
    .param p1, "titleDescriptionResId"    # I

    .line 2293
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitleDescription(Ljava/lang/CharSequence;)V

    .line 2294
    return-void
.end method

.method public blacklist setTitleDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "titleDescription"    # Ljava/lang/CharSequence;

    .line 2278
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 2279
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2280
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    .line 2281
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 2283
    :cond_2
    return-void
.end method

.method public whitelist setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .line 647
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    .line 651
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 652
    return-void
.end method

.method public whitelist shouldCommit()Z
    .locals 1

    .line 1422
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1423
    const/4 v0, 0x0

    return v0

    .line 1426
    :cond_0
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0
.end method

.method public whitelist shouldDisableDependents()Z
    .locals 1

    .line 1665
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected whitelist shouldPersist()Z
    .locals 1

    .line 1231
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 2102
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
