.class public final Lcom/google/common/net/InternetDomainName;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DASH_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT_MATCHER:Lcom/google/common/base/CharMatcher$InRange;

.field public static final DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final DOT_SPLITTER:Lcom/google/common/base/Splitter;

.field public static final LETTER_MATCHER:Lcom/google/common/base/CharMatcher$Or;

.field public static final PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, ".\u3002\uff0e\uff61"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    new-instance v2, Lcom/google/common/base/Splitter;

    new-instance v3, Lcom/google/common/base/Splitter$1;

    invoke-direct {v3, v0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher$Is;)V

    invoke-direct {v2, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$1;)V

    sput-object v2, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "-_"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    new-instance v1, Lcom/google/common/base/CharMatcher$InRange;

    const/16 v2, 0x30

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CCI)V

    sput-object v1, Lcom/google/common/net/InternetDomainName;->DIGIT_MATCHER:Lcom/google/common/base/CharMatcher$InRange;

    new-instance v2, Lcom/google/common/base/CharMatcher$InRange;

    const/16 v3, 0x61

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CCI)V

    new-instance v3, Lcom/google/common/base/CharMatcher$InRange;

    const/16 v4, 0x41

    const/16 v5, 0x5a

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CCI)V

    new-instance v4, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v4, v2, v3}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    new-instance v2, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v2, v1, v4}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v1, v2, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    sput-object v1, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    if-lt v3, v4, :cond_0

    if-gt v3, v5, :cond_0

    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    aput-char v3, p1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    const-string v3, "Domain name too long: \'%s\':"

    invoke-static {p1, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    sget-object p0, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/base/Splitter$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$5;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Lcom/google/common/base/Splitter$5;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    const-string v3, "Domain has too many parts: \'%s\'"

    invoke-static {p1, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_9

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_6
    const-string p0, "Not a valid domain name: \'%s\'"

    invoke-static {p1, p0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public static validatePart(Ljava/lang/String;Z)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE$1:Lcom/google/common/base/CharMatcher$None;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/base/CharMatcher$AnyOf;

    invoke-direct {v3, v0}, Lcom/google/common/base/CharMatcher$AnyOf;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-virtual {v3, p0}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v3, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/common/net/InternetDomainName;->DIGIT_MATCHER:Lcom/google/common/base/CharMatcher$InRange;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/common/base/CharMatcher$InRange;->matches(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/common/net/InternetDomainName;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/net/InternetDomainName;

    iget-object p0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    return-object p0
.end method
