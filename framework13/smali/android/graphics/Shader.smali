.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;,
        Landroid/graphics/Shader$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private greylist-max-o mCleaner:Ljava/lang/Runnable;

.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mLocalMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mNativeInstance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/Shader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 46
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/graphics/ColorSpace;)V
    .locals 2
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 53
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    .line 60
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use Shader() to create a Shader with no ColorSpace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist convertColors([I)[J
    .locals 4
    .param p0, "colors"    # [I

    .line 214
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 218
    array-length v0, p0

    new-array v0, v0, [J

    .line 219
    .local v0, "colorLongs":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 220
    aget v2, p0, v1

    invoke-static {v2}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 215
    .end local v0    # "colorLongs":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist detectColorSpace([J)Landroid/graphics/ColorSpace;
    .locals 4
    .param p0, "colors"    # [J

    .line 235
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 238
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 239
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 240
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All colors must be in the same ColorSpace!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 236
    .end local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist discardNativeInstanceLocked()V
    .locals 4

    .line 164
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    .line 167
    iput-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 169
    :cond_0
    return-void
.end method

.method private static native greylist-max-o nativeGetFinalizer()J
.end method


# virtual methods
.method protected blacklist colorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method protected blacklist createNativeInstance(JZ)J
    .locals 2
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 152
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final declared-synchronized greylist-max-o discardNativeInstance()V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/Shader;->discardNativeInstanceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    .end local p0    # "this":Landroid/graphics/Shader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .line 117
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o getNativeInstance()J
    .locals 2

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized blacklist getNativeInstance(Z)J
    .locals 4
    .param p1, "filterFromPaint"    # Z

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/graphics/Shader;->shouldDiscardNativeInstance(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Landroid/graphics/Shader;->discardNativeInstanceLocked()V

    .line 190
    .end local p0    # "this":Landroid/graphics/Shader;
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 192
    move-wide v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v0

    .line 191
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Shader;->createNativeInstance(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 193
    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Landroid/graphics/Shader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Shader;->mNativeInstance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    .line 198
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 185
    .end local p1    # "filterFromPaint":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .line 132
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    .line 146
    :cond_3
    :goto_1
    return-void
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .locals 1
    .param p1, "filterBitmap"    # Z

    .line 177
    const/4 v0, 0x0

    return v0
.end method
