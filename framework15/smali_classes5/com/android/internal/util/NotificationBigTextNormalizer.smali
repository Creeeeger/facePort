.class public Lcom/android/internal/util/NotificationBigTextNormalizer;
.super Ljava/lang/Object;
.source "NotificationBigTextNormalizer.java"


# static fields
.field private static final blacklist HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

.field private static final blacklist MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "\\v(\\s*\\v)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;

    const-string v0, "\\h+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isSpace(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist normalizeBigText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "NotifBigTextNormalizer#normalizeBigText"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    sget-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/internal/util/NotificationBigTextNormalizer;->normalizeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v0

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private static blacklist normalizeLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_b

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x200b

    if-lt v8, v9, :cond_0

    const/16 v9, 0x200d

    if-le v8, v9, :cond_7

    :cond_0
    const v9, 0xfeff

    if-eq v8, v9, :cond_7

    const/16 v9, 0x34f

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    const/16 v9, 0x2060

    if-lt v8, v9, :cond_2

    const/16 v9, 0x2065

    if-le v8, v9, :cond_7

    :cond_2
    const/16 v9, 0x206a

    if-lt v8, v9, :cond_3

    const/16 v9, 0x206f

    if-le v8, v9, :cond_7

    :cond_3
    const v9, 0xfff9

    if-lt v8, v9, :cond_4

    const v9, 0xfffb

    if-gt v8, v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v8}, Lcom/android/internal/util/NotificationBigTextNormalizer;->isSpace(C)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v6, :cond_5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
