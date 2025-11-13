.class public Lcom/android/internal/colorextraction/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;,
        Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;,
        Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final blacklist TYPE_DARK:I = 0x1

.field public static final blacklist TYPE_EXTRA_DARK:I = 0x2

.field public static final blacklist TYPE_NORMAL:I

.field private static final blacklist sGradientTypes:[I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

.field protected final blacklist mGradientColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mLockColors:Landroid/app/WallpaperColors;

.field private final blacklist mOnColorsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist mSystemColors:Landroid/app/WallpaperColors;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;ZLandroid/app/WallpaperManager;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;ZLandroid/app/WallpaperManager;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    sget-object v5, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v5, v5

    new-array v5, v5, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v6, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v6, v8

    new-instance v10, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v10}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    aput-object v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p4}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p4, p0, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    invoke-direct {p0, p4, p3}, Lcom/android/internal/colorextraction/ColorExtractor;->initExtractColors(Landroid/app/WallpaperManager;Z)V

    :cond_2
    return-void
.end method

.method private blacklist extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/ExtractionType;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private blacklist initExtractColors(Landroid/app/WallpaperManager;Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractWallpaperColors()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;-><init>(Lcom/android/internal/colorextraction/ColorExtractor;Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors-IA;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/app/WallpaperManager;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_0
    return-void
.end method

.method protected blacklist extractWallpaperColors()V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    aget-object v7, v0, v1

    aget-object v8, v0, v3

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    aget-object v5, v2, v5

    aget-object v1, v2, v1

    aget-object v3, v2, v3

    invoke-direct {p0, v4, v5, v1, v3}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method public blacklist getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type should be TYPE_NORMAL, TYPE_DARK or TYPE_EXTRA_DARK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be FLAG_SYSTEM or FLAG_NORMAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public blacklist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 8

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v5, v1, v2

    aget-object v6, v1, v3

    aget-object v7, v1, v4

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v2, v1, v2

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    :cond_2
    return-void
.end method

.method public blacklist removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected blacklist triggerColorsChanged(I)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v4, p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;->onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
