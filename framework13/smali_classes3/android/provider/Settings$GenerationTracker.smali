.class final Landroid/provider/Settings$GenerationTracker;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationTracker"
.end annotation


# instance fields
.field private final greylist-max-o mArray:Landroid/util/MemoryIntArray;

.field private greylist-max-o mCurrentGeneration:I

.field private final greylist-max-o mErrorHandler:Ljava/lang/Runnable;

.field private final greylist-max-o mIndex:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V
    .locals 0
    .param p1, "array"    # Landroid/util/MemoryIntArray;
    .param p2, "index"    # I
    .param p3, "generation"    # I
    .param p4, "errorHandler"    # Ljava/lang/Runnable;

    .line 3060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3061
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    .line 3062
    iput p2, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    .line 3063
    iput-object p4, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    .line 3064
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 3065
    return-void
.end method

.method private greylist-max-o readCurrentGeneration()I
    .locals 3

    .line 3084
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3085
    :catch_0
    move-exception v0

    .line 3086
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error getting current generation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3087
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3088
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3091
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .locals 3

    .line 3096
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-virtual {v0}, Landroid/util/MemoryIntArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3102
    goto :goto_0

    .line 3097
    :catch_0
    move-exception v0

    .line 3098
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error closing backing array"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3099
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3100
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3103
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o getCurrentGeneration()I
    .locals 1

    .line 3079
    iget v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return v0
.end method

.method public greylist-max-o isGenerationChanged()Z
    .locals 2

    .line 3068
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    move-result v0

    .line 3069
    .local v0, "currentGeneration":I
    if-ltz v0, :cond_1

    .line 3070
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_0

    .line 3071
    const/4 v1, 0x0

    return v1

    .line 3073
    :cond_0
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 3075
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
