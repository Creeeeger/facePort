.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final greylist-max-o WINDOW_WIDTH:I = 0x32


# instance fields
.field private greylist-max-o mCharSeq:Ljava/lang/CharSequence;

.field private greylist-max-o mEnd:I

.field private final greylist-max-o mIterator:Landroid/icu/text/BreakIterator;

.field private greylist-max-o mStart:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 51
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    .line 60
    return-void
.end method

.method private greylist-max-o checkOffsetIsValid(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 400
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_0

    .line 404
    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getBeginning(IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "getPrevWordBeginningOnTwoWordsBoundary"    # Z

    .line 225
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 227
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 231
    :cond_0
    return p1

    .line 233
    :cond_1
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0

    .line 236
    :cond_2
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0

    .line 240
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getEnd(IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "getNextWordEndOnTwoWordBoundary"    # Z

    .line 260
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 262
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 265
    :cond_0
    return p1

    .line 267
    :cond_1
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0

    .line 270
    :cond_2
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0

    .line 274
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o isAfterLetterOrDigit(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 384
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 386
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 388
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o isMidWordPunctuation(Ljava/util/Locale;I)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "codePoint"    # I

    .line 358
    const/16 v0, 0x1014

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    .line 359
    .local v0, "wb":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private greylist-max-o isOnLetterOrDigit(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 392
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-ge p1, v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 394
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 396
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o isPunctuation(I)Z
    .locals 2
    .param p0, "cp"    # I

    .line 373
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 374
    .local v0, "type":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private greylist-max-o isPunctuationEndBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 369
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isPunctuationStartBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 365
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public greylist-max-r following(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 89
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p1

    .line 92
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :cond_1
    return p1
.end method

.method public greylist getBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public greylist getEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getNextWordEndOnTwoWordBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrevWordBeginningOnTwoWordsBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getPunctuationBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 286
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 287
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result p1

    goto :goto_0

    .line 291
    :cond_0
    return p1
.end method

.method public greylist-max-r getPunctuationEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 303
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 304
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result p1

    goto :goto_0

    .line 308
    :cond_0
    return p1
.end method

.method public greylist-max-r isAfterPunctuation(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 320
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 322
    .local v0, "codePoint":I
    invoke-static {v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    move-result v1

    return v1

    .line 324
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r isBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 101
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 102
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isOnPunctuation(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 336
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-ge p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 338
    .local v0, "codePoint":I
    invoke-static {v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    move-result v1

    return v1

    .line 340
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r nextBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 114
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 115
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-r preceding(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 77
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result p1

    .line 80
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :cond_1
    return p1
.end method

.method public greylist-max-r prevBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 127
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 128
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public greylist setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 64
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 65
    iput-object p1, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    .line 66
    const/4 v0, 0x0

    add-int/lit8 v1, p2, -0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/text/method/WordIterator;->mStart:I

    .line 67
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    .line 68
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    new-instance v2, Landroid/text/CharSequenceCharacterIterator;

    iget v3, p0, Landroid/text/method/WordIterator;->mStart:I

    invoke-direct {v2, p1, v3, v0}, Landroid/text/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "input indexes are outside the CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
