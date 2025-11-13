.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private greylist-max-o mAutoMirrored:Z

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mCheckedOpacity:Z

.field private greylist-max-o mCheckedStateful:Z

.field greylist mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mDensity:I

.field private greylist-max-o mIsStateful:Z

.field greylist-max-o mNumChildren:I

.field private greylist-max-o mOpacity:I

.field greylist-max-o mOpacityOverride:I

.field greylist-max-o mPaddingBottom:I

.field greylist-max-o mPaddingEnd:I

.field greylist-max-o mPaddingLeft:I

.field private greylist-max-o mPaddingMode:I

.field greylist-max-o mPaddingRight:I

.field greylist-max-o mPaddingStart:I

.field greylist-max-o mPaddingTop:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 2016
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1994
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1995
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1996
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1997
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1998
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1999
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2000
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 2011
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 2013
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 2017
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2019
    if-eqz p1, :cond_3

    .line 2020
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2021
    .local v0, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2023
    .local v1, "N":I
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2024
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2026
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 2027
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 2029
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2030
    aget-object v3, v0, v2

    .line 2031
    .local v3, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v2

    .line 2029
    .end local v3    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2034
    .end local v2    # "i":I
    :cond_1
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2035
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 2036
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2037
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 2038
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 2039
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 2040
    iget-object v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 2041
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 2042
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2043
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 2044
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2045
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2046
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2047
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 2049
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v2, v3, :cond_2

    .line 2050
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 2052
    .end local v0    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "N":I
    :cond_2
    goto :goto_2

    .line 2053
    :cond_3
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2054
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2056
    :goto_2
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .locals 2
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2072
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2073
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 2076
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    if-lez v0, :cond_1

    .line 2077
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 2080
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    if-lez v0, :cond_2

    .line 2081
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2084
    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    if-lez v0, :cond_3

    .line 2085
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2088
    :cond_3
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    if-lez v0, :cond_4

    .line 2089
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2092
    :cond_4
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    if-lez v0, :cond_5

    .line 2093
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2096
    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .locals 6

    .line 2100
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2104
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2105
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2106
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2107
    aget-object v4, v0, v3

    .line 2108
    .local v4, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2109
    return v1

    .line 2106
    .end local v4    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2113
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 2101
    .end local v0    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "N":I
    :cond_3
    :goto_1
    return v1
.end method

.method public final greylist-max-o canConstantState()Z
    .locals 5

    .line 2203
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2204
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2205
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2206
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2207
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2208
    const/4 v4, 0x0

    return v4

    .line 2205
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2213
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 2128
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final greylist-max-o getOpacity()I
    .locals 7

    .line 2133
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_0

    .line 2134
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v0

    .line 2137
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2138
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2141
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, -0x1

    .line 2142
    .local v2, "firstIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2143
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2144
    move v2, v3

    .line 2145
    goto :goto_1

    .line 2142
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2150
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 2151
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .local v3, "op":I
    goto :goto_2

    .line 2153
    .end local v3    # "op":I
    :cond_3
    const/4 v3, -0x2

    .line 2157
    .restart local v3    # "op":I
    :goto_2
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    :goto_3
    if-ge v4, v0, :cond_5

    .line 2158
    aget-object v5, v1, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2159
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 2160
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v3, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 2157
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2164
    .end local v4    # "i":I
    :cond_5
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 2165
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2166
    return v3
.end method

.method public final greylist-max-o hasFocusStateSpecified()Z
    .locals 5

    .line 2191
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2192
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2193
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2194
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2195
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2196
    const/4 v4, 0x1

    return v4

    .line 2193
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2199
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method greylist-max-o invalidateCache()V
    .locals 1

    .line 2220
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2221
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2222
    return-void
.end method

.method public final greylist-max-o isStateful()Z
    .locals 6

    .line 2170
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_0

    .line 2171
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    return v0

    .line 2174
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2175
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2176
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .line 2177
    .local v2, "isStateful":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2178
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2179
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2180
    const/4 v2, 0x1

    .line 2181
    goto :goto_1

    .line 2177
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2185
    .end local v3    # "i":I
    :cond_2
    :goto_1
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 2186
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2187
    return v2
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2118
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2123
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected greylist-max-o onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2068
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 2069
    return-void
.end method

.method public final greylist-max-o setDensity(I)V
    .locals 1
    .param p1, "targetDensity"    # I

    .line 2059
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 2060
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2061
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2063
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 2065
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method
