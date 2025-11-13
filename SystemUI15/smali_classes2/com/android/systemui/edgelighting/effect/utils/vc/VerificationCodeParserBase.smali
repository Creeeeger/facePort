.class public abstract Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParser;


# static fields
.field public static final OTP_PATTERN:[Ljava/lang/String;

.field public static final PATTERN_EMAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^([A-Z]{1,3}-[\\d]{4,6})$"

    const-string v1, "^([\\d]{3,5}-[\\d]{3,5})$"

    const-string v2, "^([\\d]{4,10})$"

    const-string v3, "^(?=.*[\\d])(?=.*[a-zA-Z])([\\da-zA-Z]{6,10})$"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->OTP_PATTERN:[Ljava/lang/String;

    sget-object v0, Landroidx/core/util/PatternsCompat;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->PATTERN_EMAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containKey(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(^|[^\\da-z]|[0-9]| )"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "([^\\da-z]|[0-9]| |$)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getVerificationCode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ORC/VerificationCodeParserBase"

    const-string p1, "getVerificationCode() - empty text"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0300be

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    array-length v2, p2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v0, v0

    array-length v3, p2

    invoke-static {p2, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    array-length p2, p3

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    array-length p2, p0

    array-length v2, p3

    add-int/2addr p2, v2

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    array-length p0, p0

    array-length v2, p3

    invoke-static {p3, v1, p2, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p2

    :cond_4
    :goto_1
    invoke-static {p1, v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->getVerificationCodeWithoutDefault(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVerificationCodeWithoutDefault(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ORC/VerificationCodeParserBase"

    if-eqz v0, :cond_0

    const-string p0, "getVerificationCode() - empty text"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->containKey(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    const-string p2, "getKeyOTPPosition: contain strong key"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->containKey(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    if-ne p1, v3, :cond_2

    const-string p0, "getVerificationCode - not OTP message"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[^\\da-zA-Z-]|"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->PATTERN_EMAIL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|(http|ftp|https):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&amp;:/~\\+#]*[\\w\\-\\@?^=%&amp;/~\\+#])"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v4, v0

    move v6, v4

    move v5, v3

    :goto_1
    array-length v7, p2

    if-ge v4, v7, :cond_5

    sget-object v7, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->OTP_PATTERN:[Ljava/lang/String;

    move v8, v0

    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    aget-object v9, v7, v8

    aget-object v10, p2, v4

    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sub-int v9, p1, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lt p0, v10, :cond_3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result p0

    move v5, v4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    aget-object v7, p2, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eq v5, v3, :cond_6

    const-string p0, "getOTPCode = true"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, p2, v5

    goto :goto_3

    :cond_6
    const-string p0, "getOTPCode - Don\'t have any OTP code"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v1
.end method
