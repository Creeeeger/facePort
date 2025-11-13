.class public final Landroid/view/inputmethod/TextBoundsInfo;
.super Ljava/lang/Object;
.source "TextBoundsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/TextBoundsInfo$Builder;,
        Landroid/view/inputmethod/TextBoundsInfo$CharacterFlags;
    }
.end annotation


# static fields
.field private static final blacklist BIDI_LEVEL_MASK:I = 0x3f80000

.field private static final blacklist BIDI_LEVEL_SHIFT:I = 0x13

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/TextBoundsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_CHARACTER_LINEFEED:I = 0x2

.field public static final whitelist FLAG_CHARACTER_PUNCTUATION:I = 0x4

.field public static final whitelist FLAG_CHARACTER_WHITESPACE:I = 0x1

.field private static final blacklist FLAG_GRAPHEME_SEGMENT_END:I = 0x4000000

.field private static final blacklist FLAG_GRAPHEME_SEGMENT_START:I = 0x8000000

.field public static final whitelist FLAG_LINE_IS_RTL:I = 0x8

.field private static final blacklist FLAG_LINE_SEGMENT_END:I = 0x40000000

.field private static final blacklist FLAG_LINE_SEGMENT_START:I = -0x80000000

.field private static final blacklist FLAG_WORD_SEGMENT_END:I = 0x10000000

.field private static final blacklist FLAG_WORD_SEGMENT_START:I = 0x20000000

.field private static final blacklist KNOWN_CHARACTER_FLAGS:I = 0xf

.field private static final blacklist TEXT_BOUNDS_INFO_KEY:Ljava/lang/String; = "android.view.inputmethod.TextBoundsInfo"


# instance fields
.field private final blacklist mCharacterBounds:[F

.field private final blacklist mEnd:I

.field private final blacklist mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

.field private final blacklist mInternalCharacterFlags:[I

.field private final blacklist mLineSegmentFinder:Landroid/text/SegmentFinder;

.field private final blacklist mMatrixValues:[F

.field private final blacklist mStart:I

.field private final blacklist mWordSegmentFinder:Landroid/text/SegmentFinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/inputmethod/TextBoundsInfo;->isLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/TextBoundsInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/TextBoundsInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/TextBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const/high16 v3, 0x8000000

    const/high16 v4, 0x4000000

    invoke-static {v0, v3, v4, v1, v2}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const/high16 v3, 0x20000000

    const/high16 v4, 0x10000000

    invoke-static {v0, v3, v4, v1, v2}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v3, v4, v1, v2}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v1, v2

    const v2, 0x3f8000f

    new-array v3, v1, [I

    iput-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget v5, v0, v3

    const v6, 0x3f8000f

    and-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/TextBoundsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmStart(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmEnd(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterBounds(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterFlags(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterBidiLevels(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I

    move-result-object v4

    aget v4, v4, v1

    shl-int/lit8 v4, v4, 0x13

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmGraphemeSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmWordSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmLineSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;Landroid/view/inputmethod/TextBoundsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;)V

    return-void
.end method

.method public static blacklist createFromBundle(Landroid/os/Bundle;)Landroid/view/inputmethod/TextBoundsInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.inputmethod.TextBoundsInfo"

    const-class v1, Landroid/view/inputmethod/TextBoundsInfo;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/TextBoundsInfo;

    return-object v0
.end method

.method private static blacklist decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;
    .locals 5

    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    add-int v4, p3, v2

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    move v1, v3

    :cond_0
    aget v3, p0, v2

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_1

    add-int/lit8 v3, v1, 0x1

    add-int v4, p3, v2

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/text/SegmentFinder$PrescribedSegmentFinder;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;-><init>([I)V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given flags array must have the same length as the given range. flags length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V
    .locals 5

    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_3

    invoke-virtual {p5, p3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p5, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    :goto_0
    if-eq v0, v1, :cond_2

    if-gt v0, p4, :cond_2

    if-lt v2, p3, :cond_1

    sub-int v3, v2, p3

    aget v4, p0, v3

    or-int/2addr v4, p1

    aput v4, p0, v3

    sub-int v3, v0, p3

    aget v4, p0, v3

    or-int/2addr v4, p2

    aput v4, p0, v3

    :cond_1
    invoke-virtual {p5, v2}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v2

    invoke-virtual {p5, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given flags array must have the same length as the given range. flags length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getBoundsForRange(IILandroid/graphics/RectF;)V
    .locals 5

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "start"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-gt p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    return-void

    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iput v0, p3, Landroid/graphics/RectF;->top:F

    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v1, v0, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v4, v1, 0x4

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p3, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist getCursorHorizontalPosition(IIIFF)F
    .locals 8

    const-string v0, "index"

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-virtual {p0, p2}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    nop

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/TextBoundsInfo;->primaryIsTrailingPrevious(III)Z

    move-result v3

    if-eqz v3, :cond_3

    if-gt p1, p2, :cond_2

    if-eqz v0, :cond_1

    move v1, p5

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    if-lt p1, p3, :cond_5

    if-eqz v0, :cond_4

    move v1, p4

    goto :goto_2

    :cond_4
    move v1, p5

    :goto_2
    return v1

    :cond_5
    move v4, p1

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v4}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_6

    move v1, v2

    :cond_6
    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v2, v4, v2

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v7, v2, 0x4

    if-eq v1, v5, :cond_7

    aget v6, v6, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    :goto_4
    return v6
.end method

.method private blacklist getEndForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 14

    move-object v6, p0

    move v0, p1

    move/from16 v1, p2

    const/4 v7, -0x1

    if-lt v0, v1, :cond_0

    return v7

    :cond_0
    iget v2, v6, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v0, v6, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v0, v9

    const/4 v1, -0x1

    add-int/lit8 v2, v9, -0x1

    move v10, v0

    move v11, v1

    move v12, v2

    :goto_0
    if-lt v12, v8, :cond_3

    invoke-virtual {p0, v12}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v13

    if-eq v13, v11, :cond_2

    add-int/lit8 v1, v12, 0x1

    move-object v0, p0

    move v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v0

    if-eq v0, v7, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v12, 0x1

    move v2, v13

    move v10, v1

    move v11, v2

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v1, v8

    move v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v0

    return v0
.end method

.method private blacklist getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 7

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p4, p2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    if-eq v2, v0, :cond_3

    if-le v2, p1, :cond_3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    invoke-interface {p5, v3, p3}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    invoke-virtual {p4, v2}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private blacklist getLineInfo(F[ILandroid/graphics/RectF;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, p2, v3

    const/4 v5, 0x1

    aput v4, p2, v5

    iget-object v6, v0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v7, v0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v6, v7}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v6

    if-ne v6, v4, :cond_0

    return-void

    :cond_0
    iget-object v7, v0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v7, v6}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v7

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x1

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    if-eq v7, v4, :cond_5

    iget v12, v0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge v7, v12, :cond_5

    iget v12, v0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, v0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-direct {v0, v12, v13, v11}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    iget v14, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v14, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v11, v1}, Landroid/view/inputmethod/TextBoundsInfo;->verticalDistance(Landroid/graphics/RectF;F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-nez v15, :cond_2

    aput v7, p2, v3

    aput v6, p2, v5

    if-eqz v2, :cond_1

    invoke-virtual {v2, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    return-void

    :cond_2
    cmpg-float v15, v14, v10

    if-gez v15, :cond_3

    move v10, v14

    aput v7, p2, v3

    aput v6, p2, v5

    if-eqz v2, :cond_3

    invoke-virtual {v2, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_3
    iget v15, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v15, v1, v15

    if-gez v15, :cond_4

    goto :goto_1

    :cond_4
    iget-object v15, v0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v15, v7}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v7

    iget-object v15, v0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v15, v6}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v6

    goto :goto_0

    :cond_5
    :goto_1
    cmpg-float v12, v1, v8

    if-ltz v12, :cond_6

    cmpl-float v12, v1, v9

    if-lez v12, :cond_7

    :cond_6
    aput v4, p2, v3

    aput v4, p2, v5

    if-eqz v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->setEmpty()V

    :cond_7
    return-void
.end method

.method private blacklist getStartForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 16

    move/from16 v6, p2

    const/4 v0, -0x1

    move/from16 v7, p1

    if-lt v7, v6, :cond_0

    return v0

    :cond_0
    move/from16 v1, p1

    const/4 v2, -0x1

    move/from16 v3, p1

    move v14, v1

    move v15, v2

    :goto_0
    if-ge v3, v6, :cond_3

    move-object/from16 v5, p0

    invoke-virtual {v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v1

    if-eq v1, v15, :cond_2

    move-object/from16 v8, p0

    move v9, v14

    move v10, v3

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v2

    if-eq v2, v0, :cond_1

    return v2

    :cond_1
    move v4, v3

    move v8, v1

    move v14, v4

    move v15, v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v5, p0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v0

    return v0
.end method

.method private blacklist getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 7

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p4, p1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    if-eq v2, v0, :cond_3

    if-ge v2, p2, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    invoke-interface {p5, v3, p3}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    :cond_2
    invoke-virtual {p4, v2}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v2

    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static blacklist isLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z
    .locals 11

    invoke-virtual {p1, p2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_5

    if-ge v3, p3, :cond_5

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v4, p2

    aget v6, p0, v6

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    add-int/lit8 v8, v4, 0x1

    :goto_2
    if-ge v8, v5, :cond_4

    sub-int v9, v8, p2

    aget v9, p0, v9

    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_2

    move v10, v1

    goto :goto_3

    :cond_2
    move v10, v7

    :goto_3
    if-eq v10, v6, :cond_3

    return v7

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v3}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    goto :goto_0

    :cond_5
    return v1
.end method

.method private blacklist primaryIsTrailingPrevious(III)Z
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v3

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    move v3, v4

    :goto_2
    if-le p1, p2, :cond_3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v0

    goto :goto_5

    :cond_3
    nop

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v4

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    move v0, v4

    :goto_5
    if-ge v0, v3, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method private static blacklist verticalDistance(Landroid/graphics/RectF;F)F
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    return v0

    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p1, v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCharacterBidiLevel(I)I
    .locals 3

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget v1, v1, v0

    const/high16 v2, 0x3f80000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x13

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index is out of the bounds of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCharacterBounds(ILandroid/graphics/RectF;)V
    .locals 6

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    aget v1, v1, v0

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index is out of the bounds of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCharacterFlags(I)I
    .locals 3

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0xf

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index is out of the bounds of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEndIndex()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    return v0
.end method

.method public whitelist getGraphemeSegmentFinder()Landroid/text/SegmentFinder;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    return-object v0
.end method

.method public whitelist getLineSegmentFinder()Landroid/text/SegmentFinder;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    return-object v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public whitelist getOffsetForPosition(FF)I
    .locals 18

    move-object/from16 v6, p0

    const/4 v0, 0x2

    new-array v7, v0, [I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v8, v1

    move/from16 v9, p2

    invoke-direct {v6, v9, v7, v8}, Landroid/view/inputmethod/TextBoundsInfo;->getLineInfo(F[ILandroid/graphics/RectF;)V

    const/4 v1, 0x0

    aget v2, v7, v1

    const/4 v10, -0x1

    if-eq v2, v10, :cond_6

    const/4 v2, 0x1

    aget v3, v7, v2

    if-ne v3, v10, :cond_0

    goto/16 :goto_2

    :cond_0
    aget v11, v7, v1

    aget v12, v7, v2

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v6, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    move v13, v1

    if-eqz v13, :cond_2

    move v0, v12

    move v14, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v12, 0x1

    move v14, v0

    :goto_0
    iget-object v0, v6, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v0, v11}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    if-ne v0, v10, :cond_3

    return v10

    :cond_3
    iget-object v1, v6, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v1, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    :goto_1
    if-eq v15, v10, :cond_5

    if-ge v15, v14, :cond_5

    if-lt v15, v11, :cond_4

    iget v4, v8, Landroid/graphics/RectF;->left:F

    iget v5, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getCursorHorizontalPosition(IIIFF)F

    move-result v0

    sub-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v17

    if-gez v2, :cond_4

    move v2, v1

    move v3, v15

    move/from16 v17, v2

    move/from16 v16, v3

    :cond_4
    iget-object v0, v6, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v0, v15}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v15

    goto :goto_1

    :cond_5
    return v16

    :cond_6
    :goto_2
    return v10
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .locals 11

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v0, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    const/4 v4, -0x1

    :goto_0
    if-eq v3, v2, :cond_1

    if-ne v4, v2, :cond_1

    move-object v5, p0

    move v6, v3

    move v7, v0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v4

    iget-object v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v5, v3}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v3

    iget-object v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v5, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    return-object v1

    :cond_2
    iget-object v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v5, v6}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    return-object v1

    :cond_3
    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v1, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    const/4 v1, -0x1

    :goto_1
    if-le v0, v4, :cond_4

    if-ne v1, v2, :cond_4

    move-object v5, p0

    move v6, v3

    move v7, v0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v1

    iget-object v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v5, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    iget-object v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v5, v0}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p2, v2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v4}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    filled-new-array {v2, v1}, [I

    move-result-object v4

    return-object v4
.end method

.method public whitelist getStartIndex()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    return v0
.end method

.method public whitelist getWordSegmentFinder()Landroid/text/SegmentFinder;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    return-object v0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.view.inputmethod.TextBoundsInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v7, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v3, 0x8000000

    const/high16 v4, 0x4000000

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v7, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v3, 0x20000000

    const/high16 v4, 0x10000000

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v7, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
