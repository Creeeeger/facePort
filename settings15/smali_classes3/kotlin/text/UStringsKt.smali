.class public abstract Lkotlin/text/UStringsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final toUInt(Ljava/lang/String;)I
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gez v5, :cond_1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_7

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_2

    goto :goto_1

    :cond_1
    move v5, v3

    :cond_2
    const v4, 0x71c71c7

    move v6, v4

    :goto_0
    if-ge v5, v1, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Character;->digit(II)I

    move-result v7

    if-gez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_4

    if-ne v6, v4, :cond_7

    const/4 v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v7, v3

    invoke-static {v7, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-gez v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    :cond_6
    new-instance v2, Lkotlin/UInt;

    invoke-direct {v2, v3}, Lkotlin/UInt;-><init>(I)V

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    iget p0, v2, Lkotlin/UInt;->data:I

    return p0

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid number format: \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, p0}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
