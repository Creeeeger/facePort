.class public final Landroid/graphics/fonts/FontStyle;
.super Ljava/lang/Object;
.source "FontStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontStyle$FontSlant;
    }
.end annotation


# static fields
.field public static final whitelist FONT_SLANT_ITALIC:I = 0x1

.field public static final whitelist FONT_SLANT_UPRIGHT:I = 0x0

.field public static final whitelist FONT_WEIGHT_BLACK:I = 0x384

.field public static final whitelist FONT_WEIGHT_BOLD:I = 0x2bc

.field public static final whitelist FONT_WEIGHT_EXTRA_BOLD:I = 0x320

.field public static final whitelist FONT_WEIGHT_EXTRA_LIGHT:I = 0xc8

.field public static final whitelist FONT_WEIGHT_LIGHT:I = 0x12c

.field public static final whitelist FONT_WEIGHT_MAX:I = 0x3e8

.field public static final whitelist FONT_WEIGHT_MEDIUM:I = 0x1f4

.field public static final whitelist FONT_WEIGHT_MIN:I = 0x1

.field public static final whitelist FONT_WEIGHT_NORMAL:I = 0x190

.field public static final whitelist FONT_WEIGHT_SEMI_BOLD:I = 0x258

.field public static final whitelist FONT_WEIGHT_THIN:I = 0x64

.field public static final whitelist FONT_WEIGHT_UNSPECIFIED:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FontStyle"


# instance fields
.field private final blacklist mSlant:I

.field private final blacklist mWeight:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Landroid/graphics/fonts/FontStyle;->mWeight:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/FontStyle;->mSlant:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p1, :cond_0

    const/16 v2, 0x3e8

    if-gt p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string/jumbo v3, "weight value must be [1, 1000]"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const-string/jumbo v1, "slant value must be FONT_SLANT_UPRIGHT or FONT_SLANT_UPRIGHT"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/graphics/fonts/FontStyle;->mWeight:I

    iput p2, p0, Landroid/graphics/fonts/FontStyle;->mSlant:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/graphics/fonts/FontStyle;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontStyle;

    iget v3, v2, Landroid/graphics/fonts/FontStyle;->mWeight:I

    iget v4, p0, Landroid/graphics/fonts/FontStyle;->mWeight:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/graphics/fonts/FontStyle;->mSlant:I

    iget v4, p0, Landroid/graphics/fonts/FontStyle;->mSlant:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getMatchScore(Landroid/graphics/fonts/FontStyle;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSlant()I
    .locals 1

    iget v0, p0, Landroid/graphics/fonts/FontStyle;->mSlant:I

    return v0
.end method

.method public whitelist getWeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/fonts/FontStyle;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/graphics/fonts/FontStyle;->mWeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontStyle;->mSlant:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontStyle { weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontStyle;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontStyle;->mSlant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
