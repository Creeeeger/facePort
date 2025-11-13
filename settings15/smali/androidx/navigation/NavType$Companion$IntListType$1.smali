.class public final Landroidx/navigation/NavType$Companion$IntListType$1;
.super Landroidx/navigation/NavType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    invoke-direct {p0, p2}, Landroidx/navigation/NavType;-><init>(Z)V

    return-void
.end method

.method public static parseValue(Ljava/lang/String;)[F
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    return-object v0
.end method

.method public static parseValue(Ljava/lang/String;)[I
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static parseValue(Ljava/lang/String;)[J
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    return-object p0
.end method

.method public static parseValue(Ljava/lang/String;)[Z
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public final get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :pswitch_1
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([J)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_2
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0

    :pswitch_3
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :pswitch_4
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([F)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_5
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    :pswitch_6
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Z)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :pswitch_7
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_8
    const-string p0, "bundle"

    const-string v0, "key"

    invoke-static {p1, p0, p2, v0, p2}, Landroidx/navigation/NavType$Companion$BoolArrayType$1$$ExternalSyntheticOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_4

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "List<String>"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "string[]"

    return-object p0

    :pswitch_1
    const-string p0, "List<Long>"

    return-object p0

    :pswitch_2
    const-string p0, "long[]"

    return-object p0

    :pswitch_3
    const-string p0, "integer[]"

    return-object p0

    :pswitch_4
    const-string p0, "List<Float>"

    return-object p0

    :pswitch_5
    const-string p0, "float[]"

    return-object p0

    :pswitch_6
    const-string p0, "List<Boolean>"

    return-object p0

    :pswitch_7
    const-string p0, "boolean[]"

    return-object p0

    :pswitch_8
    const-string p0, "List<Int>"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    array-length p2, p1

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_1
    check-cast p1, Ljava/util/List;

    sget-object p0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType$Companion$IntType$1;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_2
    check-cast p1, [J

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[J

    move-result-object p0

    array-length p2, p1

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[J

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_3
    check-cast p1, [I

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[I

    move-result-object p0

    array-length p2, p1

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[I

    move-result-object p1

    :goto_4
    return-object p1

    :pswitch_4
    check-cast p1, Ljava/util/List;

    sget-object p0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$IntType$1;

    if-eqz p1, :cond_5

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_5

    :cond_5
    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_5
    return-object p0

    :pswitch_5
    check-cast p1, [F

    if-eqz p1, :cond_6

    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[F

    move-result-object p0

    array-length p2, p1

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[F

    move-result-object p1

    :goto_6
    return-object p1

    :pswitch_6
    check-cast p1, Ljava/util/List;

    sget-object p0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType$Companion$IntType$1;

    if-eqz p1, :cond_7

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_7

    :cond_7
    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_7
    return-object p0

    :pswitch_7
    check-cast p1, [Z

    if-eqz p1, :cond_8

    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[Z

    move-result-object p0

    array-length p2, p1

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    invoke-static {p2}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[Z

    move-result-object p1

    :goto_8
    return-object p1

    :pswitch_8
    check-cast p1, Ljava/util/List;

    sget-object p0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType$Companion$IntType$1;

    if-eqz p1, :cond_9

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_9

    :cond_9
    invoke-virtual {p0, p2}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_9
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Landroidx/navigation/NavType$Companion$IntListType$1;->parseValue(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget p0, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p3, Ljava/util/List;

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    check-cast p3, Ljava/util/Collection;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p3, [Ljava/lang/String;

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/util/List;

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :pswitch_2
    check-cast p3, [J

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :pswitch_3
    check-cast p3, [I

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    :pswitch_4
    check-cast p3, Ljava/util/List;

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [F

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-int/lit8 v2, v0, 0x1

    aput v1, p0, v0

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :cond_3
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :pswitch_5
    check-cast p3, [F

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :pswitch_6
    check-cast p3, Ljava/util/List;

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toBooleanArray(Ljava/util/Collection;)[Z

    move-result-object p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void

    :pswitch_7
    check-cast p3, [Z

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void

    :pswitch_8
    check-cast p3, Ljava/util/List;

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    :goto_4
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final valueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget p0, p0, Landroidx/navigation/NavType$Companion$IntListType$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p2, :cond_1

    check-cast p2, Ljava/util/Collection;

    new-array p0, v0, [Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_1
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/Collection;

    new-array v1, v0, [Ljava/lang/Long;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    goto :goto_1

    :cond_2
    move-object p1, p0

    :goto_1
    if-eqz p2, :cond_3

    check-cast p2, Ljava/util/Collection;

    new-array p0, v0, [Ljava/lang/Long;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    :cond_3
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, [J

    check-cast p2, [J

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Long;

    array-length v2, p1

    move v3, p0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v0

    :cond_5
    if-eqz p2, :cond_6

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/Long;

    array-length p1, p2

    :goto_3
    if-ge p0, p1, :cond_6

    aget-wide v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, [I

    check-cast p2, [I

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Integer;

    array-length v2, p1

    move v3, p0

    :goto_4
    if-ge v3, v2, :cond_8

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v1, v0

    :cond_8
    if-eqz p2, :cond_9

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/Integer;

    array-length p1, p2

    :goto_5
    if-ge p0, p1, :cond_9

    aget v2, p2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_9
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    check-cast p1, Ljava/util/Collection;

    new-array v1, v0, [Ljava/lang/Float;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Float;

    goto :goto_6

    :cond_a
    move-object p1, p0

    :goto_6
    if-eqz p2, :cond_b

    check-cast p2, Ljava/util/Collection;

    new-array p0, v0, [Ljava/lang/Float;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    :cond_b
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, [F

    check-cast p2, [F

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Float;

    array-length v2, p1

    move v3, p0

    :goto_7
    if-ge v3, v2, :cond_d

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move-object v1, v0

    :cond_d
    if-eqz p2, :cond_e

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/Float;

    array-length p1, p2

    :goto_8
    if-ge p0, p1, :cond_e

    aget v2, p2, p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_e
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    check-cast p1, Ljava/util/Collection;

    new-array v1, v0, [Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Boolean;

    goto :goto_9

    :cond_f
    move-object p1, p0

    :goto_9
    if-eqz p2, :cond_10

    check-cast p2, Ljava/util/Collection;

    new-array p0, v0, [Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Boolean;

    :cond_10
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, [Z

    check-cast p2, [Z

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Boolean;

    array-length v2, p1

    move v3, p0

    :goto_a
    if-ge v3, v2, :cond_12

    aget-boolean v4, p1, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    move-object v1, v0

    :cond_12
    if-eqz p2, :cond_13

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/Boolean;

    array-length p1, p2

    :goto_b
    if-ge p0, p1, :cond_13

    aget-boolean v2, p2, p0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_13
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    check-cast p1, Ljava/util/Collection;

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    goto :goto_c

    :cond_14
    move-object p1, p0

    :goto_c
    if-eqz p2, :cond_15

    check-cast p2, Ljava/util/Collection;

    new-array p0, v0, [Ljava/lang/Integer;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    :cond_15
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
