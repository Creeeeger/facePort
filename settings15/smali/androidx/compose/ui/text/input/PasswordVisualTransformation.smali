.class public final Landroidx/compose/ui/text/input/PasswordVisualTransformation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/text/input/VisualTransformation;


# instance fields
.field public final mask:C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2022

    iput-char v0, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    iget-char p1, p1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    iget-char p0, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/input/TransformedText;

    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-char p0, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    sget-object p0, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->Identity:Landroidx/compose/ui/text/input/OffsetMapping$Companion$Identity$1;

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-char p0, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    invoke-static {p0}, Ljava/lang/Character;->hashCode(C)I

    move-result p0

    return p0
.end method
