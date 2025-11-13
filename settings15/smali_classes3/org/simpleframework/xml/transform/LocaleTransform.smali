.class public final Lorg/simpleframework/xml/transform/LocaleTransform;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field public final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 p1, 0x3

    new-array v0, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    aput-object v3, v0, v1

    const/4 v4, 0x2

    aput-object v3, v0, v4

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    array-length v5, p0

    if-ge v3, v5, :cond_0

    aget-object v5, p0, v3

    aput-object v5, v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/Locale;

    aget-object p1, v0, v2

    aget-object v1, v0, v1

    aget-object v0, v0, v4

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/transform/InvalidFormatException;

    const-string v0, "Invalid locale %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/transform/InvalidFormatException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
