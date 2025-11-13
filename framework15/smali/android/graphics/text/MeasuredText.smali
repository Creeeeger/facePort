.class public Landroid/graphics/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MeasuredText"


# instance fields
.field private final blacklist mBottom:I

.field private final blacklist mChars:[C

.field private final blacklist mComputeBounds:Z

.field private final blacklist mComputeHyphenation:Z

.field private final blacklist mComputeLayout:Z

.field private final blacklist mNativePtr:J

.field private final blacklist mTop:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C
    .locals 0

    iget-object p0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/MeasuredText;->nGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J[CZZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iput-object p3, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    iput-boolean p4, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    iput-boolean p5, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    iput-boolean p6, p0, Landroid/graphics/text/MeasuredText;->mComputeBounds:Z

    iput p7, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    iput p8, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    return-void
.end method

.method synthetic constructor blacklist <init>(J[CZZZIILandroid/graphics/text/MeasuredText-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZZII)V

    return-void
.end method

.method private static native blacklist nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native blacklist nGetCharWidthAt(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetExtent(J[CII)J
.end method

.method private static native blacklist nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist offsetCheck(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/text/MeasuredText;->throwOffsetError(I)V

    :cond_1
    return-void
.end method

.method private blacklist rangeCheck(II)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v0, v0

    if-le p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->throwRangeError(II)V

    :cond_1
    return-void
.end method

.method private blacklist throwOffsetError(I)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "offset (%d) length(%d) out of bounds"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist throwRangeError(II)V
    .locals 5
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "start(%d) end(%d) length(%d) out of bounds"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBounds(IILandroid/graphics/Rect;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->rangeCheck(II)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/text/MeasuredText;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist getCharWidthAt(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/text/MeasuredText;->offsetCheck(I)V

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/MeasuredText;->nGetCharWidthAt(JI)F

    move-result v0

    return v0
.end method

.method public blacklist getChars()[C
    .locals 1

    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object v0
.end method

.method public whitelist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->rangeCheck(II)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetExtent(J[CII)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    return-void
.end method

.method public blacklist getMemoryUsage()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/MeasuredText;->nGetMemoryUsage(J)I

    move-result v0

    return v0
.end method

.method public blacklist getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getWidth(II)F
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->rangeCheck(II)V

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetWidth(JII)F

    move-result v0

    return v0
.end method
