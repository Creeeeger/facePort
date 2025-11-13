.class public Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;
.super Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;
.source "BroadcastReceiverListParserWithScpm.java"


# static fields
.field private static final blacklist DATA_SYSTEM_PATH:Ljava/lang/String;

.field private static final blacklist DEFAULT_VERSION:J = 0x78856cf5L

.field private static final blacklist FILE_PATH:Ljava/lang/String;

.field private static final blacklist NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist PACKAGE_NAME_TAG:Ljava/lang/String; = "package name"

.field private static final blacklist PROP_PKG_CACHE_CLEAR_NEEDED:Ljava/lang/String; = "persist.sys.clear_package_cache_needed"

.field private static final blacklist PROP_VERSION_NAME:Ljava/lang/String; = "persist.sys.package_feature.version.br"

.field private static final blacklist SAFE_DEBUG:Z = false

.field private static final blacklist TEMP_FILE_PATH:Ljava/lang/String;

.field private static final blacklist VERSION_NAME_TAG:Ljava/lang/String; = "version name"


# instance fields
.field private blacklist mShouldDecode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/br/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->DATA_SYSTEM_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->DATA_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->DATA_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcast_allowlist_from_scpm.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    const-string v0, "name=\"(.+)\""

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;-><init>()V

    return-void
.end method

.method private static blacklist convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static blacklist getNameInPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static blacklist getScpmVersion()J
    .locals 3

    const-string v0, "persist.sys.package_feature.version.br"

    const-wide/32 v1, 0x78856cf5

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;
    .locals 19

    const-string v1, ", oldVersion="

    const-string v2, "updateParserIfNeeded: newVersion="

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "BRListParser"

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to mkdirs"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->getScpmVersion()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v12, p0

    :try_start_1
    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v11, v0

    :try_start_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    sget-object v14, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v13, v0

    const/4 v0, 0x0

    :goto_0
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    const/4 v4, 0x1

    if-eqz v14, :cond_5

    add-int/lit8 v14, v0, 0x1

    const-string v0, "version name"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v15}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v9, v17

    cmp-long v0, v9, v7

    if-gtz v0, :cond_2

    nop

    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/16 v16, 0x0

    return-object v16

    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    goto/16 :goto_4

    :cond_2
    const/16 v16, 0x0

    move-object/from16 v17, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    goto/16 :goto_2

    :cond_3
    const/16 v16, 0x0

    :try_start_7
    const-string v0, "package name"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v0, :cond_4

    :try_start_8
    invoke-static {v15}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v15, v17

    move-object/from16 v17, v3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v17, v3

    :try_start_a
    const-string v3, "Failed line="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v17, v3

    :goto_1
    invoke-virtual {v13, v15}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/BufferedWriter;->newLine()V

    move v0, v14

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_5
    move-object/from16 v17, v3

    invoke-virtual {v13}, Ljava/io/BufferedWriter;->flush()V

    new-instance v3, Ljava/io/File;

    sget-object v14, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    new-instance v14, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v14

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "persist.sys.package_feature.version.br"

    move/from16 v18, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.clear_package_cache_needed"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->parseAllowList()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_8

    :cond_7
    move/from16 v18, v0

    :try_start_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v14, "Failed to renameTo."

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    :goto_2
    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :catchall_8
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    :goto_4
    :try_start_10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_11
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_7

    :catchall_b
    move-exception v0

    goto :goto_6

    :catchall_c
    move-exception v0

    move-object/from16 v12, p0

    :goto_6
    move-object/from16 v17, v3

    :goto_7
    :try_start_12
    const-string v3, "Failed to updateParserIfNeeded."

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    nop

    return-object v6

    :catchall_d
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    throw v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "BroadcastReceiverListParserWithScpm: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    const-string v0, ", ScpmVersion="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->getScpmVersion()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist parseAllowList()V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "BRListParser"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->parseAllowList(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAllowList: ScpmVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->getScpmVersion()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Failed to read SCPM allowlist file."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    goto :goto_1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    throw v1

    :cond_0
    :goto_1
    const-wide/32 v2, 0x78856cf5

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist.sys.package_feature.version.br"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->parseAllowList()V

    const-string v0, "SCPM file was not existed or corrupted. Read system file"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
