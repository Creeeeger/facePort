.class public final Lcom/android/internal/content/om/OverlayConfigParser;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;,
        Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_DEFAULT_FILENAME:Ljava/lang/String; = "config/config.xml"

.field private static final blacklist CONFIG_DIRECTORY:Ljava/lang/String; = "config"

.field static final blacklist DEFAULT_ENABLED_STATE:Z = false

.field static final blacklist DEFAULT_MUTABILITY:Z = true

.field private static final blacklist MAXIMUM_MERGE_DEPTH:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist currentParserContextToString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist expandProperty(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object p0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_6

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ro."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0}, Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Using property in overlay config path: \"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OverlayConfig"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Property is empty or doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only read only properties can be used when merging RRO config files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only a single property supported in path: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed property, unmatched braces, in: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/apex/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/overlay/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config/config.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    new-instance v2, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext-IA;)V

    move-object v1, v2

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$parseMerge$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayConfigParser$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v1, "path"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/content/om/OverlayConfigParser;->expandProperty(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    nop

    if-eqz v0, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {p4, v2}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p2, p3, p4}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p4, v3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v2, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Merged file %s outside of configuration directory in %s at %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, p0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Merged configuration file %s does not exist in %s at %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Couldn\'t find or open merged configuration file %s in %s at %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Maximum <merge> depth exceeded in %s at %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Path %s must be relative to the directory containing overlay configurations  files in %s at %s "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<merge> without path in %s at %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<merge> path expand error in %s at %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-nez v3, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-eq v6, v7, :cond_2

    move v4, v5

    :cond_2
    const-string/jumbo v6, "scanner and packageManagerOverlayInfos cannot be both null or both non-null"

    invoke-static {v4, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string/jumbo v4, "package"

    const/4 v6, 0x0

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const/4 v7, 0x0

    const-string v8, " is ignored."

    const-string v9, " in partition "

    const-string/jumbo v10, "overlay "

    const-string v11, "OverlayConfig"

    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Lcom/android/internal/content/om/OverlayScanner;->getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v12

    invoke-virtual {v2, v4, v12}, Lcom/android/internal/content/om/OverlayScanner;->isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v7, :cond_4

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v8

    iget-object v9, v7, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v8, v9}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v14, v7

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v6, v0, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v8, "overlay %s not present in partition %s in %s at %s"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move-object v14, v7

    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x0

    const-string v8, "enabled"

    invoke-interface {v1, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v8, "false"

    if-eqz v15, :cond_7

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    move v7, v9

    move/from16 v16, v7

    goto :goto_3

    :cond_7
    move/from16 v16, v7

    :goto_3
    const/4 v7, 0x1

    const-string/jumbo v9, "mutable"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    move v7, v8

    if-nez v7, :cond_9

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v8, "immutable overlays must precede mutable overlays: found in %s at %s"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    :goto_4
    move/from16 v17, v7

    goto :goto_5

    :cond_a
    move/from16 v17, v7

    :goto_5
    if-eqz v17, :cond_b

    move-object/from16 v10, p4

    invoke-static {v10, v5}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)V

    goto :goto_6

    :cond_b
    move-object/from16 v10, p4

    if-nez v16, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found default-disabled immutable overlay "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    new-instance v13, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    sget-boolean v8, Landroid/os/Build;->IS_ENG:Z

    if-nez v8, :cond_d

    sget-boolean v8, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v8, :cond_e

    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/content/om/OverlayConfigParser;->currentParserContextToString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    :cond_e
    invoke-direct {v13, v5, v7, v6}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    iget-object v11, v6, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    move-object v7, v5

    move-object v8, v4

    move/from16 v9, v16

    move/from16 v10, v17

    move-object v6, v12

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;)V

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "overlay %s configured multiple times in a single partition in %s at %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "\"<overlay> without package in %s at %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static blacklist readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    const-string v0, "OverlayConfig"

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v3, "config"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :goto_0
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "merge"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v5, "overlay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    goto :goto_4

    :pswitch_1
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    goto :goto_4

    :goto_3
    const-string v5, "Tag %s is unknown in %s at %s"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, p0, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    goto :goto_0

    :cond_1
    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Got exception parsing overlay configuration."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find or open overlay configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x410bbbb0 -> :sswitch_1
        0x62fa438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
