.class public final Landroid/graphics/BlendModeColorFilter;
.super Landroid/graphics/ColorFilter;
.source "BlendModeColorFilter.java"


# instance fields
.field final blacklist mColor:I

.field private final blacklist mMode:Landroid/graphics/BlendMode;


# direct methods
.method public constructor whitelist <init>(ILandroid/graphics/BlendMode;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 31
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 32
    iput p1, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    .line 33
    iput-object p2, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    .line 34
    return-void
.end method

.method private static native blacklist native_CreateBlendModeFilter(II)J
.end method


# virtual methods
.method blacklist createNativeInstance()J
    .locals 2

    .line 62
    iget v0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    invoke-virtual {v1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1}, Landroid/graphics/BlendModeColorFilter;->native_CreateBlendModeFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/BlendModeColorFilter;

    .line 74
    .local v2, "other":Landroid/graphics/BlendModeColorFilter;
    iget-object v3, v2, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    iget-object v4, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 71
    .end local v2    # "other":Landroid/graphics/BlendModeColorFilter;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getColor()I
    .locals 1

    .line 46
    iget v0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    return v0
.end method

.method public whitelist getMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 79
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0}, Landroid/graphics/BlendMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    add-int/2addr v0, v1

    return v0
.end method
