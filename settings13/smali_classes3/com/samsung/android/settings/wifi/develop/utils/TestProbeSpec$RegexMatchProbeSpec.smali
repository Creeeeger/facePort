.class Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;
.super Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;
.source "TestProbeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexMatchProbeSpec"
.end annotation


# instance fields
.field final mLocationHeaderRegex:Ljava/util/regex/Pattern;

.field final mStatusRegex:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 157
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 165
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    .line 166
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    return-void

    .line 162
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Protocol for probe spec should be http but was"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getResult(ILjava/lang/String;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
    .locals 6

    .line 171
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->-$$Nest$smsafeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result p1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    invoke-static {p2, v0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->-$$Nest$smsafeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/16 p1, 0xcc

    goto :goto_0

    :cond_0
    const/16 p1, 0x12e

    :goto_0
    move v1, p1

    .line 174
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;I)V

    return-object p1
.end method
