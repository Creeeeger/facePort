.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG_CONFIG:Z = false

.field private static final greylist-max-o DEBUG_LOAD:Z = false

.field private static final greylist-max-o ID_OTHER:I = 0x1000004

.field static final greylist-max-o TAG:Ljava/lang/String; = "Resources"

.field private static final greylist-max-r TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final greylist-max-r TRACE_FOR_PRELOAD:Z = false

.field private static final greylist-max-o XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static blacklist sLoadDensityDpi:I

.field private static greylist-max-o sPreloaded:Z

.field private static final greylist sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final greylist sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field private static final blacklist sThemeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final greylist mAccessLock:Ljava/lang/Object;

.field private final greylist mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAssets:Landroid/content/res/AssetManager;

.field private final greylist-max-o mCachedXmlBlockCookies:[I

.field private final greylist-max-o mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final greylist-max-o mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final greylist mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final greylist-max-o mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private final greylist-max-o mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist mDrawableCache:Landroid/content/res/DrawableCache;

.field private greylist-max-o mLastCachedXmlBlockIndex:I

.field private final greylist-max-o mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-o mPluralRule:Landroid/icu/text/PluralRules;

.field private greylist-max-r mPreloading:Z

.field private final greylist mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsThemeRegistry()Llibcore/util/NativeAllocationRegistry;
    .locals 1

    sget-object v0, Landroid/content/res/ResourcesImpl;->sThemeRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 123
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 173
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 174
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1436
    const-class v0, Landroid/content/res/ResourcesImpl;

    .line 1437
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1438
    invoke-static {}, Landroid/content/res/AssetManager;->getThemeFreeFunction()J

    move-result-wide v3

    .line 1437
    invoke-static {v0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesImpl;->sThemeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1700
    sput v2, Landroid/content/res/ResourcesImpl;->sLoadDensityDpi:I

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 131
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 133
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 135
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 137
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 140
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 148
    new-instance v0, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 149
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 156
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 157
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 158
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 163
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 168
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 191
    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 192
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 193
    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 194
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 195
    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 196
    return-void
.end method

.method private static greylist-max-o adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 559
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 563
    .local v0, "separator":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 564
    move-object v3, p0

    .line 565
    .local v3, "language":Ljava/lang/String;
    const-string v4, ""

    .local v4, "remainder":Ljava/lang/String;
    goto :goto_0

    .line 567
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "remainder":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 568
    .restart local v3    # "language":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 574
    .restart local v4    # "remainder":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "yi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :sswitch_2
    const-string v1, "he"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :goto_1
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 585
    move-object v1, v3

    .local v1, "adjustedLanguage":Ljava/lang/String;
    goto :goto_3

    .line 582
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_0
    const-string v1, "iw"

    .line 583
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    goto :goto_3

    .line 579
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_1
    const-string v1, "ji"

    .line 580
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    goto :goto_3

    .line 576
    .end local v1    # "adjustedLanguage":Ljava/lang/String;
    :pswitch_2
    const-string v1, "in"

    .line 577
    .restart local v1    # "adjustedLanguage":Ljava/lang/String;
    nop

    .line 588
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xcfd -> :sswitch_2
        0xd1b -> :sswitch_1
        0xf10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o attrForQuantityCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "quantityCode"    # Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 339
    const v0, 0x1000004

    return v0

    .line 338
    :pswitch_0
    const v0, 0x1000009

    return v0

    .line 337
    :pswitch_1
    const v0, 0x1000008

    return v0

    .line 336
    :pswitch_2
    const v0, 0x1000007

    return v0

    .line 335
    :pswitch_3
    const v0, 0x1000006

    return v0

    .line 334
    :pswitch_4
    const v0, 0x1000005

    return v0

    :sswitch_data_0
    .sparse-switch
        0x18b98 -> :sswitch_4
        0x1ae66 -> :sswitch_3
        0x1c24c -> :sswitch_2
        0x33065f -> :sswitch_1
        0x38fea8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 13
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 852
    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v9, p6

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    .line 853
    .local v11, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v11, :cond_0

    .line 854
    return-void

    .line 857
    :cond_0
    iget-boolean v0, v1, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_4

    .line 858
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 859
    .local v0, "changingConfigs":I
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 860
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    invoke-direct {p0, v0, v3, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 861
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 864
    :cond_1
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    const/16 v6, 0x2000

    invoke-direct {p0, v0, v6, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 866
    and-int/lit16 v4, v0, 0x2000

    if-nez v4, :cond_2

    .line 869
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    aget-object v3, v4, v3

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 870
    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 873
    :cond_2
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 877
    .end local v0    # "changingConfigs":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 878
    :cond_4
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v12

    .line 879
    move-object/from16 v3, p3

    move-wide/from16 v4, p6

    move-object/from16 v6, p4

    move-object v7, v11

    move/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 880
    monitor-exit v12

    .line 882
    :goto_1
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 927
    new-instance v0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/ImageDecoder$AssetInputStreamSource;-><init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 930
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    :try_start_0
    new-instance v1, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 933
    :catch_0
    move-exception v1

    .line 936
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist decodeImageDrawableQMG(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 1688
    new-instance v0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;-><init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 1691
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    :try_start_0
    new-instance v1, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/res/ResourcesImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1694
    :catch_0
    move-exception v1

    .line 1695
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method static blacklist getAttributeSetSourceResId(Landroid/util/AttributeSet;)I
    .locals 1
    .param p0, "set"    # Landroid/util/AttributeSet;

    .line 1422
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/content/res/XmlBlock$Parser;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1425
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getSourceResId()I

    move-result v0

    return v0

    .line 1423
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "key"    # J

    .line 1238
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1239
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ConstantState;

    .line 1240
    .local v1, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v1, :cond_0

    .line 1241
    invoke-virtual {v1}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 1244
    :cond_0
    iget v2, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1246
    .local v2, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v3, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v3, :cond_1

    .line 1247
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v4, 0x0

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "color"

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1249
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v0, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1253
    :cond_1
    return-object v2
.end method

.method private greylist-max-o getPluralRule()Landroid/icu/text/PluralRules;
    .locals 3

    .line 227
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    monitor-exit v0

    return-object v1

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist isQMGImage(Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1655
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 1657
    .local v1, "buffer":[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1658
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v3

    .line 1660
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 1661
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 1662
    aget-byte v0, v1, v2

    int-to-char v0, v0

    .line 1663
    .local v0, "h0":C
    const/4 v3, 0x1

    aget-byte v4, v1, v3

    int-to-char v4, v4

    .line 1665
    .local v4, "h1":C
    const/16 v5, 0x51

    if-ne v0, v5, :cond_1

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    .line 1666
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1667
    return v3

    .line 1669
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    return v2

    .line 1672
    .end local v0    # "h0":C
    .end local v4    # "h1":C
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Resources"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    return v2
.end method

.method static synthetic blacklist lambda$decodeImageDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 932
    return-void
.end method

.method static synthetic blacklist lambda$decodeImageDrawableQMG$2(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 1692
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 1693
    return-void
.end method

.method static synthetic blacklist lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;
    .locals 2

    .line 149
    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl$LookupStack-IA;)V

    return-object v0
.end method

.method private blacklist loadColorOrXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "file"    # Ljava/lang/String;

    .line 1052
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1053
    .local v0, "csl":Landroid/content/res/ColorStateList;
    new-instance v1, Landroid/graphics/drawable/ColorStateListDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1054
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "originalException":Landroid/content/res/Resources$NotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1058
    :catch_1
    move-exception v1

    .line 1060
    .local v1, "ignored":Ljava/lang/Exception;
    throw v0
.end method

.method private greylist-max-o loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 10
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1269
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1274
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "file":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1293
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1294
    const-string v4, ".xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "File "

    if-eqz v4, :cond_4

    .line 1296
    :try_start_0
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "ComplexColor"

    invoke-virtual {p0, v0, p3, v4, v6}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 1299
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 1301
    .local v6, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x2

    if-eq v7, v9, :cond_0

    const/4 v7, 0x1

    if-eq v8, v7, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    if-ne v8, v9, :cond_3

    .line 1309
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1310
    .local v7, "name":Ljava/lang/String;
    const-string v9, "gradient"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1311
    invoke-static {p1, v4, v6, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v9

    move-object v1, v9

    goto :goto_1

    .line 1312
    :cond_1
    const-string/jumbo v9, "selector"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1313
    invoke-static {p1, v4, v6, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v1, v9

    .line 1315
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "type":I
    nop

    .line 1330
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1332
    return-object v1

    .line 1306
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "type":I
    :cond_3
    :try_start_1
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v7, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "theme":Landroid/content/res/Resources$Theme;
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1316
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "type":I
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v1    # "complexColor":Landroid/content/res/ComplexColor;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "theme":Landroid/content/res/Resources$Theme;
    :catch_0
    move-exception v4

    .line 1317
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1318
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from ComplexColor resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1320
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1322
    throw v2

    .line 1325
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1326
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1328
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": .xml extension required"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1270
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert to ComplexColor: type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .locals 10
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "id"    # I

    .line 1132
    iget v0, p3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p3, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1133
    .local v0, "key":J
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 1134
    .local v2, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ComplexColor;>;"
    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ComplexColor;

    .line 1135
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v3, :cond_0

    .line 1136
    return-object v3

    .line 1139
    :cond_0
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1140
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ConstantState;

    .line 1142
    .local v5, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v5, :cond_1

    .line 1143
    invoke-virtual {v5, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/content/res/ComplexColor;

    .line 1145
    :cond_1
    if-nez v3, :cond_2

    .line 1146
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v3

    .line 1149
    :cond_2
    if-eqz v3, :cond_4

    .line 1150
    iget v6, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v6}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    .line 1152
    iget-boolean v6, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v6, :cond_3

    .line 1153
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v6

    const/4 v7, 0x0

    iget v8, p3, Landroid/util/TypedValue;->resourceId:I

    const-string v9, "color"

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1155
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v4, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    invoke-virtual {v2, v0, v1, p2, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 1161
    :cond_4
    :goto_0
    return-object v3
.end method

.method private greylist-max-o loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I

    .line 948
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 953
    iget-object v0, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 967
    .local v11, "file":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "Resources"

    if-eqz v8, :cond_1

    iget v0, v8, Landroid/content/res/Resources;->mAppIconResId:I

    if-ne v10, v0, :cond_1

    iget-object v0, v8, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 969
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 970
    .local v0, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    if-eqz v0, :cond_0

    .line 971
    iget-object v3, v8, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    iget v4, v8, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v3

    .line 972
    .local v3, "imageData":[B
    if-eqz v3, :cond_0

    .line 973
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 974
    .local v4, "is":Ljava/io/ByteArrayInputStream;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 975
    .local v5, "typedValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, v5, Landroid/util/TypedValue;->density:I

    .line 977
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 978
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v12, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 979
    invoke-static {v8, v5, v4, v1, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 980
    .local v12, "drw":Landroid/graphics/drawable/Drawable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadDrawable() : EDM get Icon from DB : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    return-object v12

    .line 986
    .end local v0    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v3    # "imageData":[B
    .end local v4    # "is":Ljava/io/ByteArrayInputStream;
    .end local v5    # "typedValue":Landroid/util/TypedValue;
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_0
    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "loadDrawable() : EDM failed to get Icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 998
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    const-wide/16 v13, 0x2000

    invoke-static {v13, v14, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 999
    iget-object v0, v7, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/res/ResourcesImpl$LookupStack;

    .line 1002
    .local v15, "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :try_start_1
    invoke-virtual {v15, v10}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1005
    invoke-virtual {v15, v10}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1007
    :try_start_2
    const-string v0, ".xml"

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1008
    invoke-virtual {v7, v10}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "typeName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadColorOrXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 1012
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1014
    .end local v0    # "typeName":Ljava/lang/String;
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object v12, v1

    goto/16 :goto_5

    .line 1015
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, v7, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v3, v9, Landroid/util/TypedValue;->assetCookie:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v11, v4}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 1017
    .local v0, "is":Ljava/io/InputStream;
    iget-object v3, v7, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroid/util/TypedValue;->assetCookie:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 1018
    .local v3, "apkPath":Ljava/lang/String;
    const-string v4, ".qmg"

    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "/data/overlays"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "/data/app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1019
    :cond_4
    move-object v1, v0

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 1020
    .local v1, "aisQMG":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-static {v0}, Landroid/content/res/ResourcesImpl;->isQMGImage(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1021
    invoke-direct {v7, v1, v8, v9}, Landroid/content/res/ResourcesImpl;->decodeImageDrawableQMG(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 1023
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-direct {v7, v1, v8, v9}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1024
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "QMG file "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", is decoded with original one, success load = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    .line 1026
    .end local v1    # "aisQMG":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object v12, v2

    goto :goto_5

    .line 1035
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "apkPath":Ljava/lang/String;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v0

    move-object v12, v4

    goto :goto_6

    .line 1026
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_4
    const-string v2, ".bmp"

    invoke-virtual {v11, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, ".spr"

    invoke-virtual {v11, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 1030
    :cond_8
    move-object v1, v0

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 1031
    .local v1, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-direct {v7, v1, v8, v9}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v12, v2

    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 1027
    .end local v1    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_4
    invoke-static {v8, v9, v0, v11, v1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1028
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v12, v1

    .line 1035
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "apkPath":Ljava/lang/String;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_5
    :try_start_6
    invoke-virtual {v15}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_1

    .line 1036
    nop

    .line 1043
    nop

    .line 1044
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 1046
    return-object v12

    .line 1035
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v0

    move-object v12, v1

    goto :goto_6

    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_2
    move-exception v0

    :goto_6
    :try_start_7
    invoke-virtual {v15}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    .line 1036
    nop

    .end local v11    # "file":Ljava/lang/String;
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v0

    .line 1003
    .restart local v11    # "file":Ljava/lang/String;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Recursive reference in drawable"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v11    # "file":Ljava/lang/String;
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    .end local p4    # "density":I
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_1

    .line 1037
    .restart local v11    # "file":Ljava/lang/String;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "wrapper":Landroid/content/res/Resources;
    .restart local p2    # "value":Landroid/util/TypedValue;
    .restart local p3    # "id":I
    .restart local p4    # "density":I
    :catch_1
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 1039
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1040
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1042
    throw v1

    .line 949
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "file":Ljava/lang/String;
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :cond_b
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7, v10}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a Drawable (color or path): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist loadXmlDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1069
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1070
    const-string v1, "drawable"

    invoke-virtual {p0, p5, p3, v0, v1}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1072
    .local v0, "rp":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, p4, v1}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1072
    :cond_0
    return-object v1

    .line 1068
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static blacklist setLoadDensityDpi(I)V
    .locals 0
    .param p0, "loadDensityDpi"    # I

    .line 1706
    sput p0, Landroid/content/res/ResourcesImpl;->sLoadDensityDpi:I

    .line 1707
    return-void
.end method

.method private greylist-max-o verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 3
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 890
    const v0, -0x40001001    # -1.9995116f

    and-int/2addr v0, p1

    not-int v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 894
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .local v0, "resName":Ljava/lang/String;
    goto :goto_0

    .line 895
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    move-object v0, v1

    .line 900
    .local v0, "resName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resource #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 901
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that varies with configuration!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 900
    const-string v2, "Resources"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v1, 0x0

    return v1

    .line 916
    .end local v0    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 528
    if-nez p1, :cond_0

    .line 530
    const/4 v0, -0x1

    return v0

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 534
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 535
    .local v0, "density":I
    if-nez v0, :cond_1

    .line 536
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 539
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 541
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 544
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    return v1
.end method

.method public blacklist clearAllCaches()V
    .locals 2

    .line 616
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1}, Landroid/content/res/DrawableCache;->clear()V

    .line 618
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1}, Landroid/content/res/DrawableCache;->clear()V

    .line 619
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 620
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 621
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v1}, Landroid/content/res/ConfigurationBoundResourceCache;->clear()V

    .line 622
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 623
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1444
    return-void
.end method

.method greylist-max-o finishPreloading()V
    .locals 1

    .line 1414
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 1415
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1416
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 1418
    :cond_0
    return-void
.end method

.method public greylist-max-o flushLayoutCache()V
    .locals 5

    .line 597
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 598
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 599
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 602
    .local v1, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 603
    aget-object v4, v1, v3

    .line 604
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_0

    .line 605
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 602
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    .end local v1    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    monitor-exit v0

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public greylist getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method greylist-max-o getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method greylist-max-r getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method greylist-max-o getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_0

    .line 269
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 273
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getLastResourceResolution()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 312
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Associated AssetManager hasn\'t resolved a resource"

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 1429
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method greylist-max-o getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    move-result-object v0

    .line 318
    .local v0, "rule":Landroid/icu/text/PluralRules;
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    int-to-double v2, p2

    .line 319
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v2

    .line 318
    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 320
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 321
    return-object v1

    .line 323
    :cond_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_1

    .line 325
    return-object v1

    .line 327
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " quantity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, p2

    .line 329
    invoke-virtual {v0, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 304
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 280
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 288
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 296
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method greylist-max-r getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 239
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 256
    const-string/jumbo v0, "string"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 259
    return-void

    .line 261
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 248
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1217
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1220
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 1222
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1225
    :cond_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v2

    .line 1226
    .local v2, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 1227
    move-object v3, v2

    check-cast v3, Landroid/content/res/ColorStateList;

    return-object v3

    .line 1230
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1232
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method greylist-max-o loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 7
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1175
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1178
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 1180
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1183
    :cond_0
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "file":Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "File "

    if-eqz v3, :cond_1

    .line 1188
    :try_start_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    nop

    .line 1202
    return-object v3

    .line 1189
    .end local v3    # "complexColor":Landroid/content/res/ComplexColor;
    :catch_0
    move-exception v3

    .line 1190
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from complex color resource ID #0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1192
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 1193
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1194
    throw v4

    .line 1197
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1199
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": .xml extension required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method blacklist loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 787
    if-lez p4, :cond_1

    iget v0, p2, Landroid/util/TypedValue;->density:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/util/TypedValue;->density:I

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 788
    iget v0, p2, Landroid/util/TypedValue;->density:I

    if-ne v0, p4, :cond_0

    .line 789
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p2, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .line 791
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->density:I

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p4

    iput v0, p2, Landroid/util/TypedValue;->density:I

    .line 806
    :cond_1
    :goto_0
    :try_start_0
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    .line 808
    const/4 v0, 0x1

    .line 809
    .local v0, "isColorDrawable":Z
    iget v1, p2, Landroid/util/TypedValue;->data:I

    int-to-long v1, v1

    .local v1, "key":J
    goto :goto_1

    .line 811
    .end local v0    # "isColorDrawable":Z
    .end local v1    # "key":J
    :cond_2
    const/4 v0, 0x0

    .line 812
    .restart local v0    # "isColorDrawable":Z
    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, p2, Landroid/util/TypedValue;->data:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 817
    .restart local v1    # "key":J
    :goto_1
    if-eqz v0, :cond_3

    .line 818
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .local v3, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_2

    .line 820
    .end local v3    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_3
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 823
    .restart local v3    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2
    if-eqz v3, :cond_4

    .line 824
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 825
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v0, :cond_5

    .line 826
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p2, Landroid/util/TypedValue;->data:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 828
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_3
    return-object v4

    .line 831
    .end local v0    # "isColorDrawable":Z
    .end local v1    # "key":J
    .end local v3    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 837
    .local v1, "name":Ljava/lang/String;
    goto :goto_4

    .line 835
    .end local v1    # "name":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 836
    .local v1, "e2":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(missing name)"

    move-object v1, v2

    .line 842
    .local v1, "name":Ljava/lang/String;
    :goto_4
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 843
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 844
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 845
    throw v2
.end method

.method greylist-max-o loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 24
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 633
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    const-string v1, "Resources"

    const/4 v9, 0x0

    if-eqz v14, :cond_1

    iget v0, v12, Landroid/util/TypedValue;->density:I

    iget-object v3, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move/from16 v16, v0

    .line 640
    .local v16, "useCache":Z
    if-lez v14, :cond_3

    iget v0, v12, Landroid/util/TypedValue;->density:I

    if-lez v0, :cond_3

    iget v0, v12, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v0, v3, :cond_3

    .line 641
    iget v0, v12, Landroid/util/TypedValue;->density:I

    if-ne v0, v14, :cond_2

    .line 642
    iget-object v0, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v12, Landroid/util/TypedValue;->density:I

    goto :goto_2

    .line 644
    :cond_2
    iget v0, v12, Landroid/util/TypedValue;->density:I

    iget-object v3, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v3

    div-int/2addr v0, v14

    iput v0, v12, Landroid/util/TypedValue;->density:I

    .line 660
    :cond_3
    :goto_2
    if-eqz v11, :cond_5

    :try_start_0
    iget v0, v11, Landroid/content/res/Resources;->mAppIconResId:I

    if-ne v13, v0, :cond_5

    iget-object v0, v11, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_5

    .line 662
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 663
    .local v0, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    if-eqz v0, :cond_4

    .line 664
    iget-object v3, v11, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    iget v4, v11, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v3

    .line 665
    .local v3, "imageData":[B
    if-eqz v3, :cond_4

    .line 666
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 668
    .local v4, "is":Ljava/io/ByteArrayInputStream;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 669
    .local v5, "typedValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, v5, Landroid/util/TypedValue;->density:I

    .line 671
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 672
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 673
    const/4 v7, 0x0

    invoke-static {v11, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 674
    .local v7, "drw":Landroid/graphics/drawable/Drawable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDrawable() : EDM get Icon from DB : "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v11, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    return-object v7

    .line 680
    .end local v0    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v3    # "imageData":[B
    .end local v4    # "is":Ljava/io/ByteArrayInputStream;
    .end local v5    # "typedValue":Landroid/util/TypedValue;
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_4
    goto :goto_3

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "loadDrawable() : EDM failed to get Icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    iget v0, v12, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    iget v0, v12, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_6

    .line 688
    const/4 v0, 0x1

    .line 689
    .local v0, "isColorDrawable":Z
    iget-object v1, v10, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 690
    .local v1, "caches":Landroid/content/res/DrawableCache;
    iget v2, v12, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    move-object v7, v1

    move-wide v5, v2

    .local v2, "key":J
    goto :goto_4

    .line 692
    .end local v0    # "isColorDrawable":Z
    .end local v1    # "caches":Landroid/content/res/DrawableCache;
    .end local v2    # "key":J
    :cond_6
    const/4 v0, 0x0

    .line 693
    .restart local v0    # "isColorDrawable":Z
    iget-object v1, v10, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 694
    .restart local v1    # "caches":Landroid/content/res/DrawableCache;
    iget v2, v12, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget v4, v12, Landroid/util/TypedValue;->data:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    move-object v7, v1

    move-wide v5, v2

    .line 700
    .end local v1    # "caches":Landroid/content/res/DrawableCache;
    .local v5, "key":J
    .local v7, "caches":Landroid/content/res/DrawableCache;
    :goto_4
    iget-boolean v1, v10, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v1, :cond_7

    if-eqz v16, :cond_7

    .line 701
    invoke-virtual {v7, v5, v6, v11, v15}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 702
    .local v1, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7

    .line 703
    iget v2, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 704
    return-object v1

    .line 711
    .end local v1    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    if-eqz v0, :cond_8

    .line 712
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v8, v1

    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_5

    .line 714
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v8, v1

    .line 718
    .local v8, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_5
    const/4 v1, 0x0

    .line 719
    .local v1, "needsNewDrawableAfterCache":Z
    if-eqz v8, :cond_9

    .line 720
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 721
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_9
    if-eqz v0, :cond_a

    .line 722
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, v12, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 724
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-direct/range {p0 .. p4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 729
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_6
    instance-of v3, v2, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_b

    .line 730
    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_7

    .line 729
    :cond_b
    move/from16 v18, v1

    .line 736
    .end local v1    # "needsNewDrawableAfterCache":Z
    .local v18, "needsNewDrawableAfterCache":Z
    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v17, 0x1

    goto :goto_8

    :cond_c
    move/from16 v17, v9

    .line 737
    .local v17, "canApplyTheme":Z
    :goto_8
    if-eqz v17, :cond_d

    if-eqz v15, :cond_d

    .line 738
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 739
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 740
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    move-object v4, v2

    goto :goto_9

    .line 746
    :cond_d
    move-object v4, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    :goto_9
    if-eqz v4, :cond_f

    .line 747
    iget v1, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 748
    if-eqz v16, :cond_e

    .line 749
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v0

    move-object/from16 v19, v4

    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .local v19, "dr":Landroid/graphics/drawable/Drawable;
    move-object v4, v7

    move-wide/from16 v20, v5

    .end local v5    # "key":J
    .local v20, "key":J
    move-object/from16 v5, p5

    move/from16 v6, v17

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .local v22, "caches":Landroid/content/res/DrawableCache;
    .local v23, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    move-wide/from16 v7, v20

    move v12, v9

    move-object/from16 v9, v19

    :try_start_3
    invoke-direct/range {v1 .. v9}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    .line 750
    if-eqz v18, :cond_10

    .line 751
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 752
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_10

    .line 753
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v2

    .end local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_b

    .line 760
    .end local v0    # "isColorDrawable":Z
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v17    # "canApplyTheme":Z
    .end local v18    # "needsNewDrawableAfterCache":Z
    .end local v20    # "key":J
    .end local v22    # "caches":Landroid/content/res/DrawableCache;
    .end local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_1
    move-exception v0

    goto :goto_c

    .line 748
    .restart local v0    # "isColorDrawable":Z
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "key":J
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    .restart local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v17    # "canApplyTheme":Z
    .restart local v18    # "needsNewDrawableAfterCache":Z
    :cond_e
    move-object/from16 v19, v4

    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "key":J
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "key":J
    .restart local v22    # "caches":Landroid/content/res/DrawableCache;
    .restart local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_a

    .line 746
    .end local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v20    # "key":J
    .end local v22    # "caches":Landroid/content/res/DrawableCache;
    .end local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "key":J
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    .restart local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_f
    move-object/from16 v19, v4

    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 759
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "key":J
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "key":J
    .restart local v22    # "caches":Landroid/content/res/DrawableCache;
    .restart local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_10
    :goto_a
    move-object/from16 v4, v19

    .end local v19    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_b
    return-object v4

    .line 760
    .end local v0    # "isColorDrawable":Z
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v17    # "canApplyTheme":Z
    .end local v18    # "needsNewDrawableAfterCache":Z
    .end local v20    # "key":J
    .end local v22    # "caches":Landroid/content/res/DrawableCache;
    .end local v23    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_2
    move-exception v0

    move v12, v9

    :goto_c
    move-object v1, v0

    .line 763
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 766
    .local v0, "name":Ljava/lang/String;
    goto :goto_d

    .line 764
    .end local v0    # "name":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 765
    .local v0, "e2":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(missing name)"

    move-object v0, v2

    .line 772
    .local v0, "name":Ljava/lang/String;
    :goto_d
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 773
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 774
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-array v3, v12, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 775
    throw v2
.end method

.method public greylist-max-o loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .locals 10
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 1081
    const-string v0, "Resources"

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1086
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "file":Ljava/lang/String;
    const-string/jumbo v2, "res/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1088
    return-object v3

    .line 1091
    :cond_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1092
    .local v2, "cached":Landroid/graphics/Typeface;
    if-eqz v2, :cond_1

    .line 1093
    return-object v2

    .line 1100
    :cond_1
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1102
    :try_start_0
    const-string/jumbo v6, "xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1103
    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v7, "font"

    invoke-virtual {p0, v1, p3, v6, v7}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 1105
    .local v6, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 1106
    invoke-static {v6, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    .local v7, "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    if-nez v7, :cond_2

    .line 1108
    nop

    .line 1119
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1108
    return-object v3

    .line 1110
    :cond_2
    :try_start_1
    iget-object v8, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v7, v8, v1}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1110
    return-object v0

    .line 1112
    .end local v6    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v7    # "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    :cond_3
    :try_start_2
    new-instance v6, Landroid/graphics/Typeface$Builder;

    iget-object v7, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v8, 0x0

    iget v9, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v6, v7, v1, v8, v9}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 1113
    invoke-virtual {v6}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1112
    return-object v0

    .line 1119
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1116
    :catch_0
    move-exception v6

    .line 1117
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    nop

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1114
    :catch_1
    move-exception v6

    .line 1115
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1119
    nop

    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1120
    nop

    .line 1121
    return-object v3

    .line 1119
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1120
    throw v0

    .line 1082
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "cached":Landroid/graphics/Typeface;
    :cond_4
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1083
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a Font: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1349
    if-eqz p2, :cond_4

    .line 1351
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 1353
    .local v1, "cachedXmlBlockCookies":[I
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 1354
    .local v2, "cachedXmlBlockFiles":[Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 1356
    .local v3, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    array-length v4, v2

    .line 1357
    .local v4, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1358
    aget v6, v1, v5

    if-ne v6, p3, :cond_0

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    aget-object v6, v2, v5

    .line 1359
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1360
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    monitor-exit v0

    return-object v6

    .line 1357
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1366
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v5, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v5

    .line 1367
    .local v5, "block":Landroid/content/res/XmlBlock;
    if-eqz v5, :cond_3

    .line 1368
    iget v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v4

    .line 1369
    .local v6, "pos":I
    iput v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 1370
    aget-object v7, v3, v6

    .line 1371
    .local v7, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v7, :cond_2

    .line 1372
    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->close()V

    .line 1374
    :cond_2
    aput p3, v1, v6

    .line 1375
    aput-object p1, v2, v6

    .line 1376
    aput-object v5, v3, v6

    .line 1377
    invoke-virtual {v5, p2}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    monitor-exit v0

    return-object v8

    .line 1379
    .end local v1    # "cachedXmlBlockCookies":[I
    .end local v2    # "cachedXmlBlockFiles":[Ljava/lang/String;
    .end local v3    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    .end local v4    # "num":I
    .end local v5    # "block":Landroid/content/res/XmlBlock;
    .end local v6    # "pos":I
    .end local v7    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_3
    monitor-exit v0

    .line 1385
    goto :goto_1

    .line 1379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "assetCookie":I
    .end local p4    # "type":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1380
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "file":Ljava/lang/String;
    .restart local p2    # "id":I
    .restart local p3    # "assetCookie":I
    .restart local p4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from xml type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1382
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1384
    throw v1

    .line 1388
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from xml type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1389
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 1

    .line 1433
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method greylist-max-o openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 361
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    const-string v3, "(null)"

    goto :goto_0

    :cond_0
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 369
    throw v1
.end method

.method greylist-max-o openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "id"    # I
    .param p2, "tempValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final greylist-max-o startPreloading()V
    .locals 3

    .line 1398
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    if-nez v1, :cond_0

    .line 1402
    const/4 v1, 0x1

    sput-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 1403
    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1404
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1405
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1406
    monitor-exit v0

    .line 1407
    return-void

    .line 1400
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    throw v1

    .line 1406
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 34
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 383
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "ResourcesImpl#updateConfiguration"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 385
    :try_start_0
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 393
    if-eqz v3, :cond_0

    .line 394
    :try_start_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 396
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 397
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 408
    :cond_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 410
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    .line 413
    .local v0, "configChanges":I
    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 414
    .local v7, "locales":Landroid/os/LocaleList;
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 415
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v8

    move-object v7, v8

    .line 416
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 419
    :cond_2
    and-int/lit8 v8, v0, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 420
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, v9, :cond_4

    .line 423
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, "availableLocales":[Ljava/lang/String;
    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 426
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 427
    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 428
    const/4 v8, 0x0

    .line 432
    :cond_3
    if-eqz v8, :cond_4

    .line 433
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    .line 435
    .local v11, "bestLocale":Ljava/util/Locale;
    if-eqz v11, :cond_4

    invoke-virtual {v7, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    if-eq v11, v12, :cond_4

    .line 436
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v13, Landroid/os/LocaleList;

    invoke-direct {v13, v11, v7}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 442
    .end local v8    # "availableLocales":[Ljava/lang/String;
    .end local v11    # "bestLocale":Ljava/util/Locale;
    :cond_4
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v8, :cond_5

    .line 443
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    iput v11, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 444
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v11, v11

    const v12, 0x3bcccccd    # 0.00625f

    mul-float/2addr v11, v12

    iput v11, v8, Landroid/util/DisplayMetrics;->density:F

    .line 449
    :cond_5
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v8, Landroid/util/DisplayMetrics;->density:F

    .line 450
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_6

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_1

    :cond_6
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr v11, v12

    iput v11, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 453
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v8, v11, :cond_7

    .line 454
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    .local v8, "width":I
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v11, "height":I
    goto :goto_2

    .line 458
    .end local v8    # "width":I
    .end local v11    # "height":I
    :cond_7
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 460
    .restart local v8    # "width":I
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 464
    .restart local v11    # "height":I
    :goto_2
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v12, v9, :cond_8

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_8

    .line 467
    const/4 v9, 0x3

    .local v9, "keyboardHidden":I
    goto :goto_3

    .line 469
    .end local v9    # "keyboardHidden":I
    :cond_8
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 477
    .restart local v9    # "keyboardHidden":I
    :goto_3
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->densityDpi:I

    .line 478
    .local v12, "loadDensityDpi":I
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v13, :cond_9

    sget v13, Landroid/content/res/ResourcesImpl;->sLoadDensityDpi:I

    if-eqz v13, :cond_9

    .line 480
    move v12, v13

    move/from16 v31, v12

    goto :goto_4

    .line 484
    :cond_9
    move/from16 v31, v12

    .end local v12    # "loadDensityDpi":I
    .local v31, "loadDensityDpi":I
    :goto_4
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->mcc:I

    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->mnc:I

    iget-object v15, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 485
    invoke-virtual {v15}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->touchscreen:I

    .line 488
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v16, :cond_a

    move/from16 v18, v31

    goto :goto_5

    .line 489
    :cond_a
    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v18, v10

    :goto_5
    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    iget-object v3, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v32, v7

    .end local v7    # "locales":Landroid/os/LocaleList;
    .local v32, "locales":Landroid/os/LocaleList;
    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v33, v0

    .end local v0    # "configChanges":I
    .local v33, "configChanges":I
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v26, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v27, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v28, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->colorMode:I

    sget v30, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 484
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v2

    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v24, v3

    move/from16 v25, v7

    move/from16 v29, v0

    invoke-virtual/range {v12 .. v30}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 502
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v2, v33

    .end local v33    # "configChanges":I
    .local v2, "configChanges":I
    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 503
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 504
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 505
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 506
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 509
    .end local v2    # "configChanges":I
    .end local v8    # "width":I
    .end local v9    # "keyboardHidden":I
    .end local v11    # "height":I
    .end local v31    # "loadDensityDpi":I
    .end local v32    # "locales":Landroid/os/LocaleList;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :try_start_2
    sget-object v2, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 511
    :try_start_3
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_b

    .line 512
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 514
    :cond_b
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    nop

    .line 518
    return-void

    .line 514
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 509
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :goto_6
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p0    # "this":Landroid/content/res/ResourcesImpl;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "metrics":Landroid/util/DisplayMetrics;
    .end local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 516
    .restart local p0    # "this":Landroid/content/res/ResourcesImpl;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local p3    # "compat":Landroid/content/res/CompatibilityInfo;
    :catchall_2
    move-exception v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    throw v0
.end method
