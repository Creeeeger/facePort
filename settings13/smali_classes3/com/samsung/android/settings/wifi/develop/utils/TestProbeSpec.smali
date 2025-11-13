.class public abstract Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;
.super Ljava/lang/Object;
.source "TestProbeSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;
    }
.end annotation


# instance fields
.field private final mEncodedSpec:Ljava/lang/String;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method static bridge synthetic -$$Nest$smsafeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->mEncodedSpec:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->mUrl:Ljava/net/URL;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private static parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const-string p0, "Invalid status pattern [%s]: %s"

    .line 77
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseSpec(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "@@/@@"

    .line 54
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 59
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    const/4 v3, 0x1

    .line 60
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x5

    .line 61
    aget-object v3, v0, v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x2

    .line 62
    aget-object v3, v0, v3

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 64
    new-instance v4, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;

    new-instance v5, Ljava/net/URL;

    aget-object v0, v0, v1

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p0, v5, v2, v3}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    return-object v4

    .line 56
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Probe spec does not have 3 parts"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 51
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Empty probe spec"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public abstract getResult(ILjava/lang/String;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->mUrl:Ljava/net/URL;

    return-object p0
.end method
