.class public final Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mAsyncFontPending:Z

.field public final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field public mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field public mFontTypeface:Landroid/graphics/Typeface;

.field public mFontWeight:I

.field public mStyle:I

.field public final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 18
    .line 19
    return-void
.end method

.method public static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 18
    .line 19
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1

    .line 26
    throw p0
.end method


# virtual methods
.method public final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final applyCompoundDrawablesTints()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v3, v0, v2

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    aget-object v3, v0, v3

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 38
    .line 39
    .line 40
    aget-object v3, v0, v1

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 43
    .line 44
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    aget-object v0, v0, v3

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public final getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public final getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const/16 v12, 0xf

    .line 8
    .line 9
    const/4 v13, 0x1

    .line 10
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v14

    .line 16
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 17
    .line 18
    .line 19
    move-result-object v15

    .line 20
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    invoke-static {v14, v8, v3, v9, v7}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v5, v6, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 34
    .line 35
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    move-object/from16 v4, p1

    .line 40
    .line 41
    move-object v10, v6

    .line 42
    move/from16 v6, p2

    .line 43
    .line 44
    move v11, v7

    .line 45
    move/from16 v7, v16

    .line 46
    .line 47
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 51
    .line 52
    const/4 v7, -0x1

    .line 53
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 58
    .line 59
    const/4 v6, 0x3

    .line 60
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 67
    .line 68
    invoke-virtual {v2, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v14, v15, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 77
    .line 78
    :cond_0
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 79
    .line 80
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 87
    .line 88
    invoke-virtual {v2, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v14, v15, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 97
    .line 98
    :cond_1
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 99
    .line 100
    const/4 v5, 0x4

    .line 101
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 108
    .line 109
    invoke-virtual {v2, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-static {v14, v15, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 118
    .line 119
    :cond_2
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 120
    .line 121
    const/4 v4, 0x2

    .line 122
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 129
    .line 130
    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-static {v14, v15, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 139
    .line 140
    :cond_3
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 141
    .line 142
    const/4 v3, 0x5

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 150
    .line 151
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {v14, v15, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 160
    .line 161
    :cond_4
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 162
    .line 163
    const/4 v13, 0x6

    .line 164
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_5

    .line 169
    .line 170
    iget-object v2, v10, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 171
    .line 172
    invoke-virtual {v2, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v14, v15, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 181
    .line 182
    :cond_5
    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 183
    .line 184
    .line 185
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 192
    .line 193
    sget-object v10, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 194
    .line 195
    const/16 v3, 0xe

    .line 196
    .line 197
    const/16 v13, 0xd

    .line 198
    .line 199
    if-eq v1, v7, :cond_9

    .line 200
    .line 201
    new-instance v4, Landroidx/appcompat/widget/TintTypedArray;

    .line 202
    .line 203
    invoke-virtual {v14, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-direct {v4, v14, v1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 208
    .line 209
    .line 210
    if-nez v2, :cond_6

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 213
    .line 214
    .line 215
    move-result v19

    .line 216
    if-eqz v19, :cond_6

    .line 217
    .line 218
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 219
    .line 220
    .line 221
    move-result v19

    .line 222
    move/from16 v20, v19

    .line 223
    .line 224
    const/16 v19, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_6
    move/from16 v19, v11

    .line 228
    .line 229
    move/from16 v20, v19

    .line 230
    .line 231
    :goto_0
    invoke-virtual {v0, v14, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 235
    .line 236
    .line 237
    move-result v21

    .line 238
    if-eqz v21, :cond_7

    .line 239
    .line 240
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v21

    .line 244
    goto :goto_1

    .line 245
    :cond_7
    const/16 v21, 0x0

    .line 246
    .line 247
    :goto_1
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 248
    .line 249
    .line 250
    move-result v22

    .line 251
    if-eqz v22, :cond_8

    .line 252
    .line 253
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    goto :goto_2

    .line 258
    :cond_8
    const/4 v1, 0x0

    .line 259
    :goto_2
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_9
    move/from16 v19, v11

    .line 264
    .line 265
    move/from16 v20, v19

    .line 266
    .line 267
    const/4 v1, 0x0

    .line 268
    const/16 v21, 0x0

    .line 269
    .line 270
    :goto_3
    new-instance v4, Landroidx/appcompat/widget/TintTypedArray;

    .line 271
    .line 272
    invoke-virtual {v14, v8, v10, v9, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    invoke-direct {v4, v14, v10}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 277
    .line 278
    .line 279
    if-nez v2, :cond_a

    .line 280
    .line 281
    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 282
    .line 283
    .line 284
    move-result v22

    .line 285
    if-eqz v22, :cond_a

    .line 286
    .line 287
    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 288
    .line 289
    .line 290
    move-result v20

    .line 291
    move/from16 v3, v20

    .line 292
    .line 293
    const/16 v19, 0x1

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_a
    move/from16 v3, v20

    .line 297
    .line 298
    :goto_4
    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 299
    .line 300
    .line 301
    move-result v20

    .line 302
    if-eqz v20, :cond_b

    .line 303
    .line 304
    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v21

    .line 308
    :cond_b
    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 309
    .line 310
    .line 311
    move-result v20

    .line 312
    if-eqz v20, :cond_c

    .line 313
    .line 314
    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    :cond_c
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 319
    .line 320
    .line 321
    move-result v20

    .line 322
    if-eqz v20, :cond_d

    .line 323
    .line 324
    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    if-nez v10, :cond_d

    .line 329
    .line 330
    iget-object v10, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 331
    .line 332
    const/4 v5, 0x0

    .line 333
    invoke-virtual {v10, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 334
    .line 335
    .line 336
    :cond_d
    invoke-virtual {v0, v14, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 340
    .line 341
    .line 342
    if-nez v2, :cond_e

    .line 343
    .line 344
    if-eqz v19, :cond_e

    .line 345
    .line 346
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 349
    .line 350
    .line 351
    :cond_e
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 352
    .line 353
    if-eqz v2, :cond_10

    .line 354
    .line 355
    iget v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 356
    .line 357
    if-ne v3, v7, :cond_f

    .line 358
    .line 359
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 360
    .line 361
    iget v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 362
    .line 363
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 364
    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_f
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 370
    .line 371
    .line 372
    :cond_10
    :goto_5
    if-eqz v1, :cond_11

    .line 373
    .line 374
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 375
    .line 376
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    :cond_11
    if-eqz v21, :cond_12

    .line 380
    .line 381
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 382
    .line 383
    invoke-static/range {v21 .. v21}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 388
    .line 389
    .line 390
    :cond_12
    iget-object v10, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 391
    .line 392
    iget-object v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 395
    .line 396
    invoke-virtual {v1, v8, v5, v9, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    iget-object v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    const/16 v19, 0x0

    .line 407
    .line 408
    const/4 v12, 0x5

    .line 409
    move-object v3, v5

    .line 410
    move-object/from16 v18, v4

    .line 411
    .line 412
    const/4 v13, 0x2

    .line 413
    move-object/from16 v4, p1

    .line 414
    .line 415
    move-object/from16 v23, v5

    .line 416
    .line 417
    const/4 v13, 0x4

    .line 418
    move-object/from16 v5, v18

    .line 419
    .line 420
    move/from16 v6, p2

    .line 421
    .line 422
    move v9, v7

    .line 423
    move/from16 v7, v19

    .line 424
    .line 425
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v1, v18

    .line 429
    .line 430
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eqz v2, :cond_13

    .line 435
    .line 436
    invoke-virtual {v1, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    iput v2, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 441
    .line 442
    :cond_13
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-eqz v2, :cond_14

    .line 447
    .line 448
    const/high16 v2, -0x40800000    # -1.0f

    .line 449
    .line 450
    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 451
    .line 452
    .line 453
    move-result v17

    .line 454
    move/from16 v3, v17

    .line 455
    .line 456
    :goto_6
    const/4 v4, 0x2

    .line 457
    goto :goto_7

    .line 458
    :cond_14
    const/high16 v2, -0x40800000    # -1.0f

    .line 459
    .line 460
    move v3, v2

    .line 461
    goto :goto_6

    .line 462
    :goto_7
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_15

    .line 467
    .line 468
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 469
    .line 470
    .line 471
    move-result v17

    .line 472
    move/from16 v4, v17

    .line 473
    .line 474
    :goto_8
    const/4 v5, 0x1

    .line 475
    goto :goto_9

    .line 476
    :cond_15
    move v4, v2

    .line 477
    goto :goto_8

    .line 478
    :goto_9
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    if-eqz v6, :cond_16

    .line 483
    .line 484
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    const/4 v2, 0x3

    .line 489
    goto :goto_a

    .line 490
    :cond_16
    const/4 v2, 0x3

    .line 491
    const/high16 v6, -0x40800000    # -1.0f

    .line 492
    .line 493
    :goto_a
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-eqz v5, :cond_1a

    .line 498
    .line 499
    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-lez v5, :cond_1a

    .line 504
    .line 505
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    new-array v13, v7, [I

    .line 518
    .line 519
    if-lez v7, :cond_19

    .line 520
    .line 521
    move v12, v11

    .line 522
    :goto_b
    if-ge v12, v7, :cond_17

    .line 523
    .line 524
    invoke-virtual {v5, v12, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 525
    .line 526
    .line 527
    move-result v19

    .line 528
    aput v19, v13, v12

    .line 529
    .line 530
    const/16 v16, 0x1

    .line 531
    .line 532
    add-int/lit8 v12, v12, 0x1

    .line 533
    .line 534
    goto :goto_b

    .line 535
    :cond_17
    invoke-static {v13}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    iput-object v7, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 540
    .line 541
    iget-object v7, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 542
    .line 543
    array-length v12, v7

    .line 544
    if-lez v12, :cond_18

    .line 545
    .line 546
    const/4 v13, 0x1

    .line 547
    goto :goto_c

    .line 548
    :cond_18
    move v13, v11

    .line 549
    :goto_c
    iput-boolean v13, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 550
    .line 551
    if-eqz v13, :cond_19

    .line 552
    .line 553
    const/4 v13, 0x1

    .line 554
    iput v13, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 555
    .line 556
    aget v2, v7, v11

    .line 557
    .line 558
    int-to-float v2, v2

    .line 559
    iput v2, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 560
    .line 561
    sub-int/2addr v12, v13

    .line 562
    aget v2, v7, v12

    .line 563
    .line 564
    int-to-float v2, v2

    .line 565
    iput v2, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 566
    .line 567
    const/high16 v2, -0x40800000    # -1.0f

    .line 568
    .line 569
    iput v2, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 570
    .line 571
    :cond_19
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 572
    .line 573
    .line 574
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    const/high16 v2, 0x3f800000    # 1.0f

    .line 582
    .line 583
    if-eqz v1, :cond_26

    .line 584
    .line 585
    iget v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 586
    .line 587
    const/4 v5, 0x1

    .line 588
    if-ne v1, v5, :cond_27

    .line 589
    .line 590
    iget-boolean v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 591
    .line 592
    if-nez v1, :cond_21

    .line 593
    .line 594
    iget-object v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 595
    .line 596
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    const/high16 v5, -0x40800000    # -1.0f

    .line 605
    .line 606
    cmpl-float v7, v4, v5

    .line 607
    .line 608
    if-nez v7, :cond_1b

    .line 609
    .line 610
    const/high16 v4, 0x41400000    # 12.0f

    .line 611
    .line 612
    const/4 v7, 0x2

    .line 613
    invoke-static {v7, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    goto :goto_d

    .line 618
    :cond_1b
    const/4 v7, 0x2

    .line 619
    :goto_d
    cmpl-float v12, v6, v5

    .line 620
    .line 621
    if-nez v12, :cond_1c

    .line 622
    .line 623
    const/high16 v6, 0x42e00000    # 112.0f

    .line 624
    .line 625
    invoke-static {v7, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 626
    .line 627
    .line 628
    move-result v6

    .line 629
    :cond_1c
    cmpl-float v1, v3, v5

    .line 630
    .line 631
    if-nez v1, :cond_1d

    .line 632
    .line 633
    move v3, v2

    .line 634
    :cond_1d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    const/4 v1, 0x0

    .line 638
    cmpg-float v5, v4, v1

    .line 639
    .line 640
    const-string v7, "px) is less or equal to (0px)"

    .line 641
    .line 642
    if-lez v5, :cond_20

    .line 643
    .line 644
    cmpg-float v5, v6, v4

    .line 645
    .line 646
    if-lez v5, :cond_1f

    .line 647
    .line 648
    cmpg-float v1, v3, v1

    .line 649
    .line 650
    if-lez v1, :cond_1e

    .line 651
    .line 652
    const/4 v1, 0x1

    .line 653
    iput v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 654
    .line 655
    iput v4, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 656
    .line 657
    iput v6, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 658
    .line 659
    iput v3, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 660
    .line 661
    iput-boolean v11, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 662
    .line 663
    goto :goto_e

    .line 664
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 665
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    const-string v2, "The auto-size step granularity ("

    .line 669
    .line 670
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    throw v0

    .line 687
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 688
    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    const-string v2, "Maximum auto-size text size ("

    .line 692
    .line 693
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v2, "px) is less or equal to minimum auto-size text size ("

    .line 700
    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    const-string v2, "px)"

    .line 708
    .line 709
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    throw v0

    .line 720
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 721
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    .line 723
    .line 724
    const-string v2, "Minimum auto-size text size ("

    .line 725
    .line 726
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    throw v0

    .line 743
    :cond_21
    :goto_e
    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    if-eqz v1, :cond_25

    .line 748
    .line 749
    iget v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 750
    .line 751
    const/4 v3, 0x1

    .line 752
    if-ne v1, v3, :cond_25

    .line 753
    .line 754
    iget-boolean v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 755
    .line 756
    if-eqz v1, :cond_23

    .line 757
    .line 758
    iget-object v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 759
    .line 760
    array-length v1, v1

    .line 761
    if-nez v1, :cond_22

    .line 762
    .line 763
    goto :goto_f

    .line 764
    :cond_22
    const/4 v3, 0x1

    .line 765
    goto :goto_11

    .line 766
    :cond_23
    :goto_f
    iget v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 767
    .line 768
    iget v3, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 769
    .line 770
    sub-float/2addr v1, v3

    .line 771
    iget v3, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 772
    .line 773
    div-float/2addr v1, v3

    .line 774
    float-to-double v3, v1

    .line 775
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 776
    .line 777
    .line 778
    move-result-wide v3

    .line 779
    double-to-int v1, v3

    .line 780
    const/4 v3, 0x1

    .line 781
    add-int/2addr v1, v3

    .line 782
    new-array v4, v1, [I

    .line 783
    .line 784
    move v7, v11

    .line 785
    :goto_10
    if-ge v7, v1, :cond_24

    .line 786
    .line 787
    iget v5, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 788
    .line 789
    int-to-float v6, v7

    .line 790
    iget v12, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 791
    .line 792
    mul-float/2addr v6, v12

    .line 793
    add-float/2addr v6, v5

    .line 794
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    aput v5, v4, v7

    .line 799
    .line 800
    add-int/2addr v7, v3

    .line 801
    goto :goto_10

    .line 802
    :cond_24
    invoke-static {v4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    iput-object v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 807
    .line 808
    :goto_11
    iput-boolean v3, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 809
    .line 810
    goto :goto_12

    .line 811
    :cond_25
    iput-boolean v11, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 812
    .line 813
    :goto_12
    iget-boolean v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 814
    .line 815
    goto :goto_13

    .line 816
    :cond_26
    iput v11, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 817
    .line 818
    :cond_27
    :goto_13
    iget v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 819
    .line 820
    if-eqz v1, :cond_28

    .line 821
    .line 822
    iget-object v1, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 823
    .line 824
    array-length v3, v1

    .line 825
    if-lez v3, :cond_28

    .line 826
    .line 827
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 828
    .line 829
    invoke-virtual {v3}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    int-to-float v3, v3

    .line 834
    const/high16 v4, -0x40800000    # -1.0f

    .line 835
    .line 836
    cmpl-float v3, v3, v4

    .line 837
    .line 838
    if-eqz v3, :cond_29

    .line 839
    .line 840
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 841
    .line 842
    iget v3, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 843
    .line 844
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    iget v4, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 849
    .line 850
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    iget v5, v10, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 855
    .line 856
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 857
    .line 858
    .line 859
    move-result v5

    .line 860
    invoke-virtual {v1, v3, v4, v5, v11}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 861
    .line 862
    .line 863
    :cond_28
    :goto_14
    move-object/from16 v1, v23

    .line 864
    .line 865
    goto :goto_15

    .line 866
    :cond_29
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 867
    .line 868
    invoke-virtual {v3, v1, v11}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 869
    .line 870
    .line 871
    goto :goto_14

    .line 872
    :goto_15
    invoke-virtual {v14, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    const/16 v3, 0x8

    .line 877
    .line 878
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 879
    .line 880
    .line 881
    move-result v3

    .line 882
    if-eq v3, v9, :cond_2a

    .line 883
    .line 884
    invoke-virtual {v15, v14, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    :goto_16
    const/16 v4, 0xd

    .line 889
    .line 890
    goto :goto_17

    .line 891
    :cond_2a
    const/4 v3, 0x0

    .line 892
    goto :goto_16

    .line 893
    :goto_17
    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 894
    .line 895
    .line 896
    move-result v4

    .line 897
    if-eq v4, v9, :cond_2b

    .line 898
    .line 899
    invoke-virtual {v15, v14, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 900
    .line 901
    .line 902
    move-result-object v4

    .line 903
    goto :goto_18

    .line 904
    :cond_2b
    const/4 v4, 0x0

    .line 905
    :goto_18
    const/16 v5, 0x9

    .line 906
    .line 907
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 908
    .line 909
    .line 910
    move-result v5

    .line 911
    if-eq v5, v9, :cond_2c

    .line 912
    .line 913
    invoke-virtual {v15, v14, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 914
    .line 915
    .line 916
    move-result-object v5

    .line 917
    :goto_19
    const/4 v6, 0x6

    .line 918
    goto :goto_1a

    .line 919
    :cond_2c
    const/4 v5, 0x0

    .line 920
    goto :goto_19

    .line 921
    :goto_1a
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 922
    .line 923
    .line 924
    move-result v6

    .line 925
    if-eq v6, v9, :cond_2d

    .line 926
    .line 927
    invoke-virtual {v15, v14, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 928
    .line 929
    .line 930
    move-result-object v6

    .line 931
    goto :goto_1b

    .line 932
    :cond_2d
    const/4 v6, 0x0

    .line 933
    :goto_1b
    const/16 v7, 0xa

    .line 934
    .line 935
    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 936
    .line 937
    .line 938
    move-result v7

    .line 939
    if-eq v7, v9, :cond_2e

    .line 940
    .line 941
    invoke-virtual {v15, v14, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 942
    .line 943
    .line 944
    move-result-object v7

    .line 945
    goto :goto_1c

    .line 946
    :cond_2e
    const/4 v7, 0x0

    .line 947
    :goto_1c
    const/4 v8, 0x7

    .line 948
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 949
    .line 950
    .line 951
    move-result v8

    .line 952
    if-eq v8, v9, :cond_2f

    .line 953
    .line 954
    invoke-virtual {v15, v14, v8}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 955
    .line 956
    .line 957
    move-result-object v8

    .line 958
    goto :goto_1d

    .line 959
    :cond_2f
    const/4 v8, 0x0

    .line 960
    :goto_1d
    if-nez v7, :cond_3a

    .line 961
    .line 962
    if-eqz v8, :cond_30

    .line 963
    .line 964
    goto :goto_25

    .line 965
    :cond_30
    if-nez v3, :cond_31

    .line 966
    .line 967
    if-nez v4, :cond_31

    .line 968
    .line 969
    if-nez v5, :cond_31

    .line 970
    .line 971
    if-eqz v6, :cond_3f

    .line 972
    .line 973
    :cond_31
    iget-object v7, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 974
    .line 975
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 976
    .line 977
    .line 978
    move-result-object v7

    .line 979
    aget-object v8, v7, v11

    .line 980
    .line 981
    if-nez v8, :cond_32

    .line 982
    .line 983
    const/4 v10, 0x2

    .line 984
    aget-object v12, v7, v10

    .line 985
    .line 986
    if-eqz v12, :cond_33

    .line 987
    .line 988
    :cond_32
    const/4 v10, 0x3

    .line 989
    goto :goto_22

    .line 990
    :cond_33
    iget-object v7, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 991
    .line 992
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 993
    .line 994
    .line 995
    move-result-object v7

    .line 996
    iget-object v8, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 997
    .line 998
    if-eqz v3, :cond_34

    .line 999
    .line 1000
    goto :goto_1e

    .line 1001
    :cond_34
    aget-object v3, v7, v11

    .line 1002
    .line 1003
    :goto_1e
    if-eqz v4, :cond_35

    .line 1004
    .line 1005
    goto :goto_1f

    .line 1006
    :cond_35
    const/4 v4, 0x1

    .line 1007
    aget-object v4, v7, v4

    .line 1008
    .line 1009
    :goto_1f
    if-eqz v5, :cond_36

    .line 1010
    .line 1011
    goto :goto_20

    .line 1012
    :cond_36
    const/4 v5, 0x2

    .line 1013
    aget-object v5, v7, v5

    .line 1014
    .line 1015
    :goto_20
    if-eqz v6, :cond_37

    .line 1016
    .line 1017
    goto :goto_21

    .line 1018
    :cond_37
    const/4 v10, 0x3

    .line 1019
    aget-object v6, v7, v10

    .line 1020
    .line 1021
    :goto_21
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_2a

    .line 1025
    :goto_22
    if-eqz v4, :cond_38

    .line 1026
    .line 1027
    goto :goto_23

    .line 1028
    :cond_38
    const/4 v3, 0x1

    .line 1029
    aget-object v4, v7, v3

    .line 1030
    .line 1031
    :goto_23
    if-eqz v6, :cond_39

    .line 1032
    .line 1033
    goto :goto_24

    .line 1034
    :cond_39
    aget-object v6, v7, v10

    .line 1035
    .line 1036
    :goto_24
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1037
    .line 1038
    const/4 v5, 0x2

    .line 1039
    aget-object v5, v7, v5

    .line 1040
    .line 1041
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_2a

    .line 1045
    :cond_3a
    :goto_25
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1046
    .line 1047
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    if-eqz v7, :cond_3b

    .line 1052
    .line 1053
    goto :goto_26

    .line 1054
    :cond_3b
    aget-object v7, v3, v11

    .line 1055
    .line 1056
    :goto_26
    if-eqz v4, :cond_3c

    .line 1057
    .line 1058
    goto :goto_27

    .line 1059
    :cond_3c
    const/4 v4, 0x1

    .line 1060
    aget-object v4, v3, v4

    .line 1061
    .line 1062
    :goto_27
    if-eqz v8, :cond_3d

    .line 1063
    .line 1064
    goto :goto_28

    .line 1065
    :cond_3d
    const/4 v5, 0x2

    .line 1066
    aget-object v8, v3, v5

    .line 1067
    .line 1068
    :goto_28
    iget-object v5, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1069
    .line 1070
    if-eqz v6, :cond_3e

    .line 1071
    .line 1072
    goto :goto_29

    .line 1073
    :cond_3e
    const/4 v6, 0x3

    .line 1074
    aget-object v6, v3, v6

    .line 1075
    .line 1076
    :goto_29
    invoke-virtual {v5, v7, v4, v8, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1077
    .line 1078
    .line 1079
    :cond_3f
    :goto_2a
    const/16 v3, 0xb

    .line 1080
    .line 1081
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v4

    .line 1085
    if-eqz v4, :cond_41

    .line 1086
    .line 1087
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v4

    .line 1091
    if-eqz v4, :cond_40

    .line 1092
    .line 1093
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1094
    .line 1095
    .line 1096
    move-result v4

    .line 1097
    if-eqz v4, :cond_40

    .line 1098
    .line 1099
    invoke-static {v14, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v4

    .line 1103
    if-eqz v4, :cond_40

    .line 1104
    .line 1105
    goto :goto_2b

    .line 1106
    :cond_40
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v4

    .line 1110
    :goto_2b
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1111
    .line 1112
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_41
    const/16 v3, 0xc

    .line 1119
    .line 1120
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v4

    .line 1124
    if-eqz v4, :cond_42

    .line 1125
    .line 1126
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1127
    .line 1128
    .line 1129
    move-result v3

    .line 1130
    const/4 v4, 0x0

    .line 1131
    invoke-static {v3, v4}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1136
    .line 1137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1141
    .line 1142
    .line 1143
    :cond_42
    const/16 v3, 0xf

    .line 1144
    .line 1145
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1146
    .line 1147
    .line 1148
    move-result v4

    .line 1149
    const/16 v3, 0x12

    .line 1150
    .line 1151
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1152
    .line 1153
    .line 1154
    move-result v3

    .line 1155
    const/16 v5, 0x13

    .line 1156
    .line 1157
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v6

    .line 1161
    if-eqz v6, :cond_44

    .line 1162
    .line 1163
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v6

    .line 1167
    if-eqz v6, :cond_43

    .line 1168
    .line 1169
    iget v7, v6, Landroid/util/TypedValue;->type:I

    .line 1170
    .line 1171
    const/4 v8, 0x5

    .line 1172
    if-ne v7, v8, :cond_43

    .line 1173
    .line 1174
    iget v5, v6, Landroid/util/TypedValue;->data:I

    .line 1175
    .line 1176
    const/16 v6, 0xf

    .line 1177
    .line 1178
    and-int/lit8 v7, v5, 0xf

    .line 1179
    .line 1180
    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 1181
    .line 1182
    .line 1183
    move-result v5

    .line 1184
    goto :goto_2c

    .line 1185
    :cond_43
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1186
    .line 1187
    .line 1188
    move-result v5

    .line 1189
    int-to-float v5, v5

    .line 1190
    move v7, v9

    .line 1191
    goto :goto_2c

    .line 1192
    :cond_44
    move v7, v9

    .line 1193
    const/high16 v5, -0x40800000    # -1.0f

    .line 1194
    .line 1195
    :goto_2c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1196
    .line 1197
    .line 1198
    if-eq v4, v9, :cond_46

    .line 1199
    .line 1200
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1201
    .line 1202
    if-ltz v4, :cond_45

    .line 1203
    .line 1204
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 1205
    .line 1206
    .line 1207
    goto :goto_2d

    .line 1208
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1209
    .line 1210
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    throw v0

    .line 1214
    :cond_46
    :goto_2d
    if-eq v3, v9, :cond_48

    .line 1215
    .line 1216
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1217
    .line 1218
    if-ltz v3, :cond_49

    .line 1219
    .line 1220
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v4

    .line 1224
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v4

    .line 1228
    invoke-virtual {v1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v6

    .line 1232
    if-eqz v6, :cond_47

    .line 1233
    .line 1234
    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1235
    .line 1236
    goto :goto_2e

    .line 1237
    :cond_47
    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1238
    .line 1239
    :goto_2e
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 1240
    .line 1241
    .line 1242
    move-result v6

    .line 1243
    if-le v3, v6, :cond_48

    .line 1244
    .line 1245
    sub-int/2addr v3, v4

    .line 1246
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 1247
    .line 1248
    .line 1249
    move-result v4

    .line 1250
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    .line 1251
    .line 1252
    .line 1253
    move-result v6

    .line 1254
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    .line 1255
    .line 1256
    .line 1257
    move-result v8

    .line 1258
    invoke-virtual {v1, v4, v6, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1259
    .line 1260
    .line 1261
    :cond_48
    const/high16 v1, -0x40800000    # -1.0f

    .line 1262
    .line 1263
    goto :goto_2f

    .line 1264
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1265
    .line 1266
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1267
    .line 1268
    .line 1269
    throw v0

    .line 1270
    :goto_2f
    cmpl-float v1, v5, v1

    .line 1271
    .line 1272
    if-eqz v1, :cond_4c

    .line 1273
    .line 1274
    if-ne v7, v9, :cond_4b

    .line 1275
    .line 1276
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1277
    .line 1278
    float-to-int v1, v5

    .line 1279
    if-ltz v1, :cond_4a

    .line 1280
    .line 1281
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v3

    .line 1285
    const/4 v4, 0x0

    .line 1286
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1287
    .line 1288
    .line 1289
    move-result v3

    .line 1290
    if-eq v1, v3, :cond_4c

    .line 1291
    .line 1292
    sub-int/2addr v1, v3

    .line 1293
    int-to-float v1, v1

    .line 1294
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_30

    .line 1298
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1299
    .line 1300
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    throw v0

    .line 1304
    :cond_4b
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 1305
    .line 1306
    invoke-virtual {v0, v7, v5}, Landroid/widget/TextView;->setLineHeight(IF)V

    .line 1307
    .line 1308
    .line 1309
    :cond_4c
    :goto_30
    return-void
.end method

.method public final onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    .line 3
    new-instance v1, Landroidx/appcompat/widget/TintTypedArray;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0xd

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 79
    .line 80
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 81
    .line 82
    invoke-virtual {p2, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 34
    .line 35
    return-void
.end method

.method public final setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 34
    .line 35
    return-void
.end method

.method public final updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 11
    .line 12
    iget-object v0, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 22
    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 26
    .line 27
    and-int/2addr v0, v2

    .line 28
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 29
    .line 30
    :cond_0
    iget-object v0, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 31
    .line 32
    const/16 v1, 0xa

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v4, 0xc

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x1

    .line 42
    if-nez v0, :cond_6

    .line 43
    .line 44
    iget-object v0, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 54
    .line 55
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iput-boolean v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 62
    .line 63
    iget-object p1, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 64
    .line 65
    invoke-virtual {p1, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eq p1, v6, :cond_4

    .line 70
    .line 71
    if-eq p1, v2, :cond_3

    .line 72
    .line 73
    const/4 p2, 0x3

    .line 74
    if-eq p1, p2, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 78
    .line 79
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 83
    .line 84
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 88
    .line 89
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 90
    .line 91
    :cond_5
    :goto_0
    return-void

    .line 92
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 94
    .line 95
    iget-object v0, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    move v1, v4

    .line 104
    :cond_7
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 105
    .line 106
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_c

    .line 113
    .line 114
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 115
    .line 116
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    .line 122
    .line 123
    invoke-direct {v7, p0, v0, v4, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 124
    .line 125
    .line 126
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 127
    .line 128
    invoke-virtual {p2, v1, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/appcompat/widget/AppCompatTextHelper$1;)Landroid/graphics/Typeface;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_a

    .line 133
    .line 134
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 135
    .line 136
    if-eq v0, v3, :cond_9

    .line 137
    .line 138
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 143
    .line 144
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 145
    .line 146
    and-int/2addr v4, v2

    .line 147
    if-eqz v4, :cond_8

    .line 148
    .line 149
    move v4, v6

    .line 150
    goto :goto_2

    .line 151
    :cond_8
    move v4, v5

    .line 152
    :goto_2
    invoke-static {p1, v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 160
    .line 161
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 162
    .line 163
    if-nez p1, :cond_b

    .line 164
    .line 165
    move p1, v6

    .line 166
    goto :goto_4

    .line 167
    :cond_b
    move p1, v5

    .line 168
    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 171
    .line 172
    if-nez p1, :cond_f

    .line 173
    .line 174
    iget-object p1, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_f

    .line 181
    .line 182
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 183
    .line 184
    if-eq p2, v3, :cond_e

    .line 185
    .line 186
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 191
    .line 192
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 193
    .line 194
    and-int/2addr v0, v2

    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    move v5, v6

    .line 198
    :cond_d
    invoke-static {p1, p2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 206
    .line 207
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 212
    .line 213
    :cond_f
    :goto_5
    return-void
.end method
