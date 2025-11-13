.class public abstract Lkotlin/text/HexExtensionsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HEX_DIGITS_TO_DECIMAL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x80

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, -0x1

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    move v3, v0

    :goto_1
    const-string v4, "0123456789abcdef"

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_2
    const-string v3, "0123456789ABCDEF"

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    aput v0, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_2

    :cond_2
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    return-void
.end method

.method public static final checkContainsAt(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    if-gt v0, p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Expected "

    const-string v3, " \""

    const-string v4, "\" at index "

    invoke-static {v2, p4, v3, p3, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", but was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hexToInt$default(Ljava/lang/String;)I
    .locals 8

    sget-object v0, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/text/HexFormat;->Default:Lkotlin/text/HexFormat;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2, v1, v3}, Lkotlin/collections/AbstractList$Companion;->checkBoundsIndexes$kotlin_stdlib(III)V

    iget-object v0, v0, Lkotlin/text/HexFormat;->number:Lkotlin/text/HexFormat$NumberHexFormat;

    iget-object v3, v0, Lkotlin/text/HexFormat$NumberHexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v0, v0, Lkotlin/text/HexFormat$NumberHexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v5, v1, :cond_3

    const-string v4, "prefix"

    invoke-static {v2, v1, p0, v3, v4}, Lkotlin/text/HexExtensionsKt;->checkContainsAt(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v1, v3

    const-string v4, "suffix"

    invoke-static {v3, v1, p0, v0, v4}, Lkotlin/text/HexExtensionsKt;->checkContainsAt(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, v3, v2

    const/16 v1, 0x8

    const-string v4, ", but was "

    if-gt v0, v1, :cond_2

    const-wide/16 v0, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    const/4 v5, 0x4

    shl-long/2addr v0, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_0

    sget-object v6, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    aget v5, v6, v5

    if-ltz v5, :cond_0

    int-to-long v5, v5

    or-long/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Expected a hexadecimal digit at index "

    invoke-static {v2, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    long-to-int p0, v0

    return p0

    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v3, "Expected at most 8 hexadecimal digits at index "

    const-string v5, " of length "

    invoke-static {v2, v3, v4, p0, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "Expected a hexadecimal number with prefix \""

    const-string v6, "\" and suffix \""

    const-string v7, "\", but was "

    invoke-static {v5, v3, v6, v0, v7}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static toHexString$default(I)Ljava/lang/String;
    .locals 10

    sget-object v0, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/text/HexFormat;->Default:Lkotlin/text/HexFormat;

    int-to-long v1, p0

    iget-boolean p0, v0, Lkotlin/text/HexFormat;->upperCase:Z

    if-eqz p0, :cond_0

    const-string p0, "0123456789ABCDEF"

    goto :goto_0

    :cond_0
    const-string p0, "0123456789abcdef"

    :goto_0
    iget-object v0, v0, Lkotlin/text/HexFormat;->number:Lkotlin/text/HexFormat$NumberHexFormat;

    iget-object v3, v0, Lkotlin/text/HexFormat$NumberHexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    iget-object v5, v0, Lkotlin/text/HexFormat$NumberHexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    iget-boolean v0, v0, Lkotlin/text/HexFormat$NumberHexFormat;->removeLeadingZeros:Z

    :cond_1
    :goto_1
    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x4

    shr-long v6, v1, v3

    const-wide/16 v8, 0xf

    and-long/2addr v6, v8

    long-to-int v6, v6

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    if-lez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
