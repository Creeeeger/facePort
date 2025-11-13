.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VectorDrawableState"
.end annotation


# static fields
.field static final greylist-max-o ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x13c


# instance fields
.field private greylist-max-o mAllocationOfAllNodes:I

.field greylist-max-o mAutoMirrored:Z

.field greylist-max-o mBaseHeight:I

.field greylist-max-o mBaseWidth:I

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mCacheDirty:Z

.field greylist-max-o mCachedAutoMirrored:Z

.field blacklist mCachedBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mCachedThemeAttrs:[I

.field greylist-max-o mCachedTint:Landroid/content/res/ColorStateList;

.field greylist-max-o mChangingConfigurations:I

.field greylist-max-o mDensity:I

.field greylist-max-o mLastHWCachePixelCount:I

.field greylist-max-o mLastSWCachePixelCount:I

.field greylist-max-o mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

.field greylist-max-o mOpticalInsets:Landroid/graphics/Insets;

.field greylist-max-o mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field greylist-max-o mRootName:Ljava/lang/String;

.field greylist-max-o mThemeAttrs:[I

.field greylist-max-o mTint:Landroid/content/res/ColorStateList;

.field final greylist-max-o mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mViewportHeight:F

.field greylist-max-o mViewportWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcreateNativeTree(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 1033
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 1060
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1005
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 1006
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1009
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 1010
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 1011
    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 1012
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 1013
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1014
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 1016
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1018
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1019
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    .line 1030
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    .line 1031
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    .line 1054
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    .line 1063
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 1064
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 1065
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1066
    iget-boolean v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 1067
    new-instance v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1068
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 1070
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 1071
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 1072
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iget v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    .line 1073
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1075
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 1076
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1077
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1078
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1081
    :cond_0
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1082
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 1084
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    .line 1085
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .locals 5
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1194
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 1195
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 1198
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    .line 1200
    .local v0, "insetLeft":I
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    .line 1202
    .local v2, "insetTop":I
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v3, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    .line 1204
    .local v3, "insetRight":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    .line 1206
    .local v1, "insetBottom":I
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1207
    return-void
.end method

.method private greylist-max-o createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 3
    .param p1, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1088
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmNativePtr(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateTree(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1090
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1091
    return-void
.end method

.method private greylist-max-o createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 5
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1096
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1097
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    invoke-static {p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmNativePtr(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v3

    .line 1096
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateTreeFromCopy(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1099
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1100
    return-void
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1140
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1141
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 1145
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1148
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1145
    :goto_1
    return v0
.end method

.method public greylist-max-o canReuseCache()Z
    .locals 2

    .line 1118
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBlendMode:Landroid/graphics/BlendMode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    .line 1123
    const/4 v0, 0x1

    return v0

    .line 1125
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    .line 1126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1216
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 1217
    .local v0, "bitmapCacheSize":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    add-int/lit16 v2, v2, 0x13c

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1219
    return-void
.end method

.method public greylist-max-o getAlpha()F
    .locals 2

    .line 1231
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetRootAlpha(J)F

    move-result v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 1163
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 1164
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 1163
    return v0
.end method

.method greylist-max-o getNativeRenderer()J
    .locals 2

    .line 1111
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_0

    .line 1112
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1114
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1047
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    return-object v0

    .line 1050
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    .line 1174
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1173
    :goto_0
    return v0
.end method

.method public greylist-max-o isStateful()Z
    .locals 1

    .line 1168
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    .line 1169
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1168
    :goto_0
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1153
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1158
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable-IA;)V

    return-object v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 1210
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o onTreeConstructionFinished()V
    .locals 2

    .line 1105
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1106
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 1107
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1108
    return-void
.end method

.method public greylist-max-o setAlpha(F)Z
    .locals 2
    .param p1, "alpha"    # F

    .line 1226
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRootAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o setDensity(I)Z
    .locals 2
    .param p1, "targetDensity"    # I

    .line 1184
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 1185
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1186
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1187
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyDensityScaling(II)V

    .line 1188
    const/4 v1, 0x1

    return v1

    .line 1190
    .end local v0    # "sourceDensity":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o setViewportSize(FF)V
    .locals 2
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    .line 1178
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 1179
    iput p2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 1180
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRendererViewportSize(JFF)V

    .line 1181
    return-void
.end method

.method public greylist-max-o updateCacheStates()V
    .locals 1

    .line 1132
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    .line 1133
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    .line 1134
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBlendMode:Landroid/graphics/BlendMode;

    .line 1135
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 1137
    return-void
.end method
