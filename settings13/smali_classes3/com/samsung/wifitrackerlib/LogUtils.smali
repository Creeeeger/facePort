.class public Lcom/samsung/wifitrackerlib/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# instance fields
.field private final bssidPattern:Ljava/util/regex/Pattern;

.field private final isProductDev:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/LogUtils;->isProductDev:Z

    const-string v0, "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/LogUtils;->bssidPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/LogUtils;->isProductDev:Z

    const-string p1, "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"

    .line 40
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/wifitrackerlib/LogUtils;->bssidPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/samsung/wifitrackerlib/LogUtils;->isProductDev:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getPrintableLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "**"

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/LogUtils;->bssidPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v2, 0x0

    .line 71
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 73
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int/lit8 v5, v3, 0x9

    .line 74
    invoke-virtual {v1, p1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0xb

    add-int/lit8 v5, v3, 0xc

    .line 76
    invoke-virtual {v1, p1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xe

    .line 78
    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
