.class public Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
.super Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
.source "BroadcastReceiverListParserWithScpm.java"


# static fields
.field private static final blacklist DATA_SYSTEM_PATH:Ljava/lang/String;

.field private static final blacklist FILE_PATH:Ljava/lang/String;

.field private static final blacklist LOCAL_VERSION:J = 0x7886fa39L

.field private static final blacklist NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist PACKAGE_NAME_TAG:Ljava/lang/String; = "package name"

.field private static final blacklist PROP_PKG_CACHE_CLEAR_NEEDED:Ljava/lang/String; = "persist.sys.clear_package_cache_needed"

.field private static final blacklist PROP_VERSION_NAME:Ljava/lang/String; = "persist.sys.package_feature.version.br"

.field private static final blacklist TAG_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist TEMP_FILE_PATH:Ljava/lang/String;

.field private static final blacklist VERSION_NAME_TAG:Ljava/lang/String; = "version name"


# instance fields
.field private blacklist mShouldDecode:Z

.field private blacklist mVersionFromXml:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
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

    sput-object v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->DATA_SYSTEM_PATH:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "temp.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcast_allowlist_from_scpm.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    .line 68
    const-string v0, "name=\"(.+)\""

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;-><init>()V

    return-void
.end method

.method private static blacklist convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encode"    # Z

    .line 147
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 148
    return-object v0
.end method

.method private static blacklist getNameInPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 219
    .local v0, "matcher":Ljava/util/regex/Matcher;
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

    .line 143
    const-string/jumbo v0, "persist.sys.package_feature.version.br"

    const-wide/32 v1, 0x7886fa39

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
    .locals 20
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .line 153
    const-string v1, ", oldVersion="

    const-string/jumbo v2, "updateParserIfNeeded: newVersion="

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 154
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v5, 0x0

    const-string v6, "BRListParser"

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "Failed to mkdirs"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v5

    .line 159
    :cond_0
    const/4 v7, 0x0

    .line 160
    .local v7, "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    invoke-static {}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->getScpmVersion()J

    move-result-wide v8

    .line 161
    .local v8, "oldVersion":J
    const-wide/16 v10, 0x0

    .line 162
    .local v10, "newVersion":J
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v13, p0

    :try_start_1
    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v12, v0

    .line 163
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v4, v0

    .line 165
    .local v4, "writer":Ljava/io/BufferedWriter;
    const/4 v0, 0x0

    .line 166
    .local v0, "lineNum":I
    :goto_0
    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .local v15, "line":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v14, :cond_6

    .line 167
    add-int/lit8 v14, v0, 0x1

    .line 168
    .end local v0    # "lineNum":I
    .local v14, "lineNum":I
    const-string/jumbo v0, "version name"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_3

    .line 169
    :try_start_4
    invoke-static {v15}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v10, v17

    .line 170
    cmp-long v0, v10, v8

    if-gtz v0, :cond_2

    .line 171
    nop

    .line 204
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/16 v16, 0x0

    return-object v16

    .line 204
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "lineNum":I
    .end local v15    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_7

    .line 162
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    goto/16 :goto_4

    .line 170
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v14    # "lineNum":I
    .restart local v15    # "line":Ljava/lang/String;
    :cond_2
    const/16 v16, 0x0

    move-object/from16 v17, v3

    goto :goto_1

    .line 162
    .end local v14    # "lineNum":I
    .end local v15    # "line":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    goto/16 :goto_2

    .line 173
    .restart local v14    # "lineNum":I
    .restart local v15    # "line":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    :try_start_7
    const-string/jumbo v0, "package name"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v0, :cond_5

    .line 175
    :try_start_8
    invoke-static {v15}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "encodedPackageName":Ljava/lang/String;
    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v15, v17

    .line 184
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "encodedPackageName":Ljava/lang/String;
    move-object/from16 v17, v3

    goto :goto_1

    .line 178
    :catchall_3
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_9
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v17, v3

    .end local v3    # "dir":Ljava/io/File;
    .local v17, "dir":Ljava/io/File;
    const-string v3, "Failed line="

    if-eqz v5, :cond_4

    .line 180
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 182
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v17    # "dir":Ljava/io/File;
    .restart local v3    # "dir":Ljava/io/File;
    :cond_5
    move-object/from16 v17, v3

    .line 186
    .end local v3    # "dir":Ljava/io/File;
    .restart local v17    # "dir":Ljava/io/File;
    :goto_1
    invoke-virtual {v4, v15}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    move v0, v14

    move-object/from16 v5, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 189
    .end local v14    # "lineNum":I
    .end local v17    # "dir":Ljava/io/File;
    .local v0, "lineNum":I
    .restart local v3    # "dir":Ljava/io/File;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "dir":Ljava/io/File;
    .restart local v17    # "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 191
    new-instance v3, Ljava/io/File;

    sget-object v14, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 195
    :cond_7
    new-instance v14, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v14, "tmpFile":Ljava/io/File;
    invoke-virtual {v14, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 200
    move/from16 v18, v0

    .end local v0    # "lineNum":I
    .local v18, "lineNum":I
    const-string/jumbo v0, "persist.sys.package_feature.version.br"

    move-object/from16 v19, v3

    .end local v3    # "file":Ljava/io/File;
    .local v19, "file":Ljava/io/File;
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "persist.sys.clear_package_cache_needed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;-><init>()V

    move-object v7, v0

    .line 203
    invoke-virtual {v7}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->parseAllowList()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 204
    .end local v14    # "tmpFile":Ljava/io/File;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "lineNum":I
    .end local v19    # "file":Ljava/io/File;
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :try_start_c
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 207
    .end local v12    # "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    goto/16 :goto_8

    .line 197
    .local v0, "lineNum":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "tmpFile":Ljava/io/File;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_8
    move/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "lineNum":I
    .end local v3    # "file":Ljava/io/File;
    .restart local v18    # "lineNum":I
    .restart local v19    # "file":Ljava/io/File;
    :try_start_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Failed to renameTo."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .end local v7    # "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    .end local v8    # "oldVersion":J
    .end local v10    # "newVersion":J
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "dir":Ljava/io/File;
    .end local p0    # "fileDescriptor":Ljava/io/FileDescriptor;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 162
    .end local v14    # "tmpFile":Ljava/io/File;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "lineNum":I
    .end local v19    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    .restart local v8    # "oldVersion":J
    .restart local v10    # "newVersion":J
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "dir":Ljava/io/File;
    .restart local p0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .end local v17    # "dir":Ljava/io/File;
    .local v3, "dir":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    .end local v3    # "dir":Ljava/io/File;
    .restart local v17    # "dir":Ljava/io/File;
    :goto_2
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v5, v0

    :try_start_f
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    .end local v8    # "oldVersion":J
    .end local v10    # "newVersion":J
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "dir":Ljava/io/File;
    .end local p0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :goto_3
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    .restart local v8    # "oldVersion":J
    .restart local v10    # "newVersion":J
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "dir":Ljava/io/File;
    .restart local p0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_4

    .end local v17    # "dir":Ljava/io/File;
    .restart local v3    # "dir":Ljava/io/File;
    :catchall_8
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    .end local v3    # "dir":Ljava/io/File;
    .restart local v17    # "dir":Ljava/io/File;
    :goto_4
    :try_start_10
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_11
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    .end local v8    # "oldVersion":J
    .end local v10    # "newVersion":J
    .end local v17    # "dir":Ljava/io/File;
    .end local p0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :goto_5
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 204
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "newParser":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    .restart local v8    # "oldVersion":J
    .restart local v10    # "newVersion":J
    .restart local v17    # "dir":Ljava/io/File;
    .restart local p0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :catchall_a
    move-exception v0

    goto :goto_7

    .end local v17    # "dir":Ljava/io/File;
    .restart local v3    # "dir":Ljava/io/File;
    :catchall_b
    move-exception v0

    goto :goto_6

    :catchall_c
    move-exception v0

    move-object/from16 v13, p0

    :goto_6
    move-object/from16 v17, v3

    .line 205
    .end local v3    # "dir":Ljava/io/File;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "dir":Ljava/io/File;
    :goto_7
    :try_start_12
    const-string v3, "Failed to updateParserIfNeeded."

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 207
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    :goto_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 213
    .end local v0    # "file":Ljava/io/File;
    :cond_9
    nop

    .line 214
    return-object v7

    .line 207
    :catchall_d
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 213
    .end local v1    # "file":Ljava/io/File;
    :cond_a
    throw v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 128
    const-string v0, "BroadcastReceiverListParserWithScpm: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

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

    .line 132
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 133
    :goto_0
    const-string v0, ", LocalVersion="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    const-wide/32 v0, 0x7886fa39

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 135
    const-string v0, ", ScpmVersion="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->getScpmVersion()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 137
    const-string v0, ", XmlVersion="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-wide v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mVersionFromXml:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 139
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 140
    return-void
.end method

.method public blacklist parseAllowList()V
    .locals 8

    .line 75
    invoke-static {}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->getScpmVersion()J

    move-result-wide v0

    .line 77
    .local v0, "scpmVersion":J
    const-wide/32 v2, 0x7886fa39

    cmp-long v4, v2, v0

    const-string v5, ", XmlVersion="

    const-string v6, "BRListParser"

    if-gez v4, :cond_1

    .line 78
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    .line 83
    invoke-virtual {p0, v7}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->parseAllowList(Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseAllowList: LocalVersion=2022111801, ScpmVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mVersionFromXml:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 79
    :cond_0
    const-string/jumbo v4, "persist.sys.package_feature.version.br"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "File is not exists."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "scpmVersion":J
    .end local p0    # "this":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    throw v2

    .line 89
    .restart local v0    # "scpmVersion":J
    .restart local p0    # "this":Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parseAllowList. LocalVersion=2022111801, ScpmVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mVersionFromXml:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method blacklist parseMetadataElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "elementName"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 100
    :pswitch_1
    const/4 v0, 0x0

    const-string v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mVersionFromXml:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v1, 0x1

    return v1

    .line 105
    :catch_0
    move-exception v2

    .line 110
    .end local v0    # "version":Ljava/lang/String;
    :cond_1
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x14f51cd8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method blacklist parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
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

    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->mShouldDecode:Z

    if-nez v1, :cond_0

    .line 117
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "decodedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "encodedPackage":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v3    # "encodedPackage":Ljava/lang/String;
    goto :goto_0

    .line 124
    :cond_1
    return-object v1
.end method
