.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final greylist-max-o BOLD_WEIGHT:I = 0x2bc

.field public static final greylist-max-o NORMAL_WEIGHT:I = 0x190


# instance fields
.field private final greylist-max-o mAssetManager:Landroid/content/res/AssetManager;

.field private greylist-max-o mFallbackFamilyName:Ljava/lang/String;

.field private final blacklist mFontBuilder:Landroid/graphics/fonts/Font$Builder;

.field private greylist-max-o mItalic:I

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 594
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 595
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isAsset"    # Z
    .param p4, "cookie"    # I

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 540
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 607
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 608
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 609
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 540
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 548
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 550
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 540
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 564
    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .local v0, "builder":Landroid/graphics/fonts/Font$Builder;
    goto :goto_0

    .line 565
    .end local v0    # "builder":Landroid/graphics/fonts/Font$Builder;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 571
    .local v0, "builder":Landroid/graphics/fonts/Font$Builder;
    :goto_0
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 572
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 573
    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 540
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 582
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 584
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 585
    return-void
.end method

.method private static greylist-max-o createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I
    .param p6, "fallback"    # Ljava/lang/String;

    .line 710
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 711
    .local v0, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 713
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, "-"

    if-ge v3, v2, :cond_0

    .line 714
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 717
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    if-eqz p3, :cond_1

    .line 730
    array-length v3, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, p3, v5

    .line 731
    .local v6, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .end local v6    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 6

    .line 740
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    return-object v0

    .line 744
    :cond_0
    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 745
    .local v0, "base":Landroid/graphics/Typeface;
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v3, v2, :cond_1

    .line 746
    return-object v0

    .line 749
    :cond_1
    if-ne v1, v2, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I

    move-result v1

    .line 751
    .local v1, "weight":I
    :cond_2
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    :goto_0
    move v4, v5

    :cond_4
    move v2, v4

    .line 752
    .local v2, "italic":Z
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->-$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/Typeface;
    .locals 9

    .line 761
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    if-nez v0, :cond_0

    .line 762
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 765
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    .line 766
    .local v0, "font":Landroid/graphics/fonts/Font;
    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 767
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v4

    iget v5, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v6, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 769
    iget-object v7, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string/jumbo v7, "sans-serif"

    .line 766
    :cond_2
    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    .line 772
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :try_start_1
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 774
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_3

    .line 775
    monitor-exit v2

    return-object v3

    .line 777
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/graphics/Typeface$Builder;
    :try_start_2
    throw v3

    .line 779
    .restart local p0    # "this":Landroid/graphics/Typeface$Builder;
    :cond_4
    :goto_1
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 780
    .local v2, "family":Landroid/graphics/fonts/FontFamily;
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 781
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    goto :goto_2

    :cond_5
    nop

    .line 782
    .local v3, "weight":I
    :goto_2
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v5, v4, :cond_6

    .line 783
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v5

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move v4, v5

    .line 784
    .local v4, "slant":I
    new-instance v5, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v5, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 785
    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v5

    .line 786
    .local v5, "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    iget-object v6, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 787
    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 789
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v6

    .line 790
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_8

    .line 791
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 792
    :try_start_3
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    monitor-exit v7

    goto :goto_4

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Landroid/graphics/Typeface$Builder;
    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 795
    .restart local p0    # "this":Landroid/graphics/Typeface$Builder;
    :cond_8
    :goto_4
    return-object v6

    .line 796
    .end local v0    # "font":Landroid/graphics/fonts/Font;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v3    # "weight":I
    .end local v4    # "slant":I
    .end local v5    # "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .line 695
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 658
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 659
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 668
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 669
    return-object p0
.end method

.method public whitelist setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "italic"    # Z

    .line 633
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 634
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 635
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "ttcIndex"    # I

    .line 646
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 647
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 1
    .param p1, "weight"    # I

    .line 620
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 621
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 622
    return-object p0
.end method
