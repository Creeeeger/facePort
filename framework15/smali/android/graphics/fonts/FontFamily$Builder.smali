.class public final Landroid/graphics/fonts/FontFamily$Builder;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;,
        Landroid/graphics/fonts/FontFamily$Builder$VariableFontFamilyType;
    }
.end annotation


# static fields
.field private static final blacklist TAG_ital:I = 0x6974616c

.field private static final blacklist TAG_wght:I = 0x77676874

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_NONE:I = 0x0

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_SINGLE_FONT_WGHT_ITAL:I = 0x2

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_SINGLE_FONT_WGHT_ONLY:I = 0x1

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_TWO_FONTS_WGHT:I = 0x3

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStyles:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetReleaseNativeFamily()J
    .locals 2

    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nGetReleaseNativeFamily()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/fonts/Font;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static blacklist analyzeAndResolveVariableType(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v3, 0x77676874

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    nop

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v6

    invoke-static {v4, v6}, Landroid/graphics/fonts/FontFileUtil;->getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x6974616c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v5

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    nop

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/fonts/FontFileUtil;->getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    if-ne v0, v5, :cond_6

    move v0, v5

    goto :goto_1

    :cond_6
    move v0, v4

    :goto_1
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v2

    if-ne v2, v5, :cond_7

    move v2, v5

    goto :goto_2

    :cond_7
    move v2, v4

    :goto_2
    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/Font;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/Font;

    invoke-virtual {p0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/4 v1, 0x3

    return v1
.end method

.method private static blacklist makeStyleIdentifier(Landroid/graphics/fonts/Font;)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static native blacklist nAddFont(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nBuild(JLjava/lang/String;IZZI)J
.end method

.method private static native blacklist nGetReleaseNativeFamily()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    .locals 4

    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v0

    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist build()Landroid/graphics/fonts/FontFamily;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;
    .locals 9

    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nInitBuilder()J

    move-result-wide v7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/Font;

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v1

    invoke-static {v7, v8, v1, v2}, Landroid/graphics/fonts/FontFamily$Builder;->nAddFont(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v0, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/fonts/FontFamily$Builder;->nBuild(JLjava/lang/String;IZZI)J

    move-result-wide v0

    new-instance v2, Landroid/graphics/fonts/FontFamily;

    invoke-direct {v2, v0, v1}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;->-$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-object v2
.end method

.method public whitelist buildVariableFamily()Landroid/graphics/fonts/FontFamily;
    .locals 7

    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/graphics/fonts/FontFamily$Builder;->analyzeAndResolveVariableType(Ljava/util/ArrayList;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v1, p0

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    return-object v1
.end method
