.class public Lcom/android/internal/os/MonotonicClock;
.super Ljava/lang/Object;
.source "MonotonicClock.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicClock"

.field public static final blacklist UNDEFINED:J = -0x1L

.field private static final blacklist XML_ATTR_TIMESHIFT:Ljava/lang/String; = "timeshift"

.field private static final blacklist XML_TAG_MONOTONIC_TIME:Ljava/lang/String; = "monotonic_time"


# instance fields
.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private final blacklist mFile:Landroid/util/AtomicFile;

.field private final blacklist mTimeshift:J


# direct methods
.method public constructor blacklist <init>(JLcom/android/internal/os/Clock;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .locals 3

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->read(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iput-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    :goto_0
    return-void
.end method

.method private blacklist read(J)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->readXml(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load monotonic clock from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonotonicClock"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide p1
.end method

.method private blacklist readXml(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "monotonic_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "timeshift"

    const/4 v4, 0x0

    invoke-interface {p2, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    move-wide v0, v3

    :cond_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private blacklist writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "monotonic_time"

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "timeshift"

    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v3

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method


# virtual methods
.method public blacklist monotonicTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist monotonicTime(J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public blacklist write()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write monotonic clock to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonotonicClock"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void
.end method
