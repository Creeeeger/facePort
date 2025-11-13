.class public Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;-><init>()V

    return-void
.end method

.method public static toIntOrNull(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 10

    invoke-static {p0}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const v5, -0x7fffffff

    if-gez v4, :cond_4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    return-object v1

    :cond_1
    const/16 v6, 0x2d

    if-ne v3, v6, :cond_2

    const/high16 v5, -0x80000000

    move v3, v4

    goto :goto_0

    :cond_2
    const/16 v6, 0x2b

    if-ne v3, v6, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    move v3, v2

    move v4, v3

    :goto_0
    const v6, -0x38e38e3

    move v7, v6

    :goto_1
    if-ge v4, v0, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p0}, Ljava/lang/Character;->digit(II)I

    move-result v8

    if-gez v8, :cond_5

    return-object v1

    :cond_5
    if-ge v2, v7, :cond_7

    if-ne v7, v6, :cond_6

    div-int v7, v5, p0

    if-ge v2, v7, :cond_7

    :cond_6
    return-object v1

    :cond_7
    mul-int/2addr v2, p0

    add-int v9, v5, v8

    if-ge v2, v9, :cond_8

    return-object v1

    :cond_8
    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_a
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2
    return-object p0
.end method
