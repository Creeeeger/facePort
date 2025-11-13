.class public Landroid/net/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final greylist-max-o MATCH_GROUP_AUTHORITY:I = 0x2

.field static final greylist-max-o MATCH_GROUP_HOST:I = 0x3

.field static final greylist-max-o MATCH_GROUP_PATH:I = 0x5

.field static final greylist-max-o MATCH_GROUP_PORT:I = 0x4

.field static final greylist-max-o MATCH_GROUP_SCHEME:I = 0x1

.field static greylist-max-o sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-o mAuthInfo:Ljava/lang/String;

.field private greylist mHost:Ljava/lang/String;

.field private greylist mPath:Ljava/lang/String;

.field private greylist-max-p mPort:I

.field private greylist mScheme:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    const-string v0, ""

    iput-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/WebAddress;->mPort:I

    const-string v2, "/"

    iput-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    sget-object v3, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v4, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    :cond_1
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-object v4, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/WebAddress;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/ParseException;

    const-string v2, "Bad port"

    invoke-direct {v1, v2}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4

    iput-object v4, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    :cond_5
    :goto_1
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    const-string v5, "https"

    const/16 v6, 0x1bb

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v5, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    if-ne v2, v1, :cond_8

    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput v6, p0, Landroid/net/WebAddress;->mPort:I

    goto :goto_2

    :cond_7
    const/16 v1, 0x50

    iput v1, p0, Landroid/net/WebAddress;->mPort:I

    :cond_8
    :goto_2
    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http"

    iput-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    :cond_9
    return-void

    :cond_a
    new-instance v0, Landroid/net/ParseException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public greylist-max-r getAuthInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .locals 1

    iget v0, p0, Landroid/net/WebAddress;->mPort:I

    return v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setAuthInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    return-void
.end method

.method public greylist setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setPort(I)V
    .locals 0

    iput p1, p0, Landroid/net/WebAddress;->mPort:I

    return-void
.end method

.method public greylist-max-o setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget v1, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, ""

    iget-object v2, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
