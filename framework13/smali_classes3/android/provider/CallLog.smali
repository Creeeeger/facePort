.class public Landroid/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Locations;,
        Landroid/provider/CallLog$Calls;,
        Landroid/provider/CallLog$AddCallParams;,
        Landroid/provider/CallLog$CallComposerLoggingException;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "call_log"

.field public static final blacklist CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

.field public static final blacklist CALL_COMPOSER_SEGMENT:Ljava/lang/String; = "call_composer"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CallLog"

.field public static final greylist-max-o SHADOW_AUTHORITY:Ljava/lang/String; = "call_log_shadow"

.field public static final blacklist SHADOW_CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

.field private static final greylist-max-o VERBOSE_LOG:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 83
    nop

    .line 84
    const-string v0, "content://call_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 90
    nop

    .line 91
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "call_composer"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog;->CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

    .line 104
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 105
    const-string v1, "call_log_shadow"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog;->SHADOW_CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

    .line 104
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$storeCallComposerPicture$0(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/content/Context;)V
    .locals 19
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "context"    # Landroid/content/Context;

    .line 226
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "CallLog"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v0

    .line 230
    .local v4, "tmpOut":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 234
    .local v5, "buffer":[B
    :goto_0
    move-object/from16 v6, p0

    :try_start_0
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move v7, v0

    .line 241
    .local v7, "bytesRead":I
    nop

    .line 242
    const/4 v8, 0x0

    if-gez v7, :cond_9

    .line 243
    nop

    .line 247
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 249
    .local v9, "picData":[B
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/UserManager;

    .line 250
    .local v10, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    .line 254
    .local v11, "user":Landroid/os/UserHandle;
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v11}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v11

    :goto_1
    move-object v12, v0

    .line 256
    .local v12, "realUser":Landroid/os/UserHandle;
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-eq v12, v0, :cond_2

    .line 257
    invoke-virtual {v10, v12}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/CallLog;->CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

    goto :goto_2

    .line 258
    :cond_1
    sget-object v0, Landroid/provider/CallLog;->SHADOW_CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

    :goto_2
    move-object v13, v0

    .line 259
    .local v13, "baseUri":Landroid/net/Uri;
    nop

    .line 260
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 259
    invoke-static {v13, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v14

    .line 261
    .local v14, "pictureInsertionUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Inserting call composer for single user at "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_1
    invoke-static {v2, v14, v8, v9}, Landroid/provider/CallLog;->storeCallComposerPictureAtUri(Landroid/content/Context;Landroid/net/Uri;Z[B)Landroid/net/Uri;

    move-result-object v0

    .line 267
    .local v0, "result":Landroid/net/Uri;
    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/provider/CallLog$CallComposerLoggingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    .end local v0    # "result":Landroid/net/Uri;
    goto :goto_3

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/provider/CallLog$CallComposerLoggingException;
    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 271
    .end local v0    # "e":Landroid/provider/CallLog$CallComposerLoggingException;
    :goto_3
    return-void

    .line 275
    .end local v13    # "baseUri":Landroid/net/Uri;
    .end local v14    # "pictureInsertionUri":Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v13, 0x1

    if-nez v0, :cond_3

    .line 276
    sget-object v0, Landroid/provider/CallLog;->SHADOW_CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 278
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 276
    invoke-static {v0, v8}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    .line 279
    .local v8, "pictureInsertionUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inserting call composer for all users, but system locked at "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    nop

    .line 283
    :try_start_2
    invoke-static {v2, v8, v13, v9}, Landroid/provider/CallLog;->storeCallComposerPictureAtUri(Landroid/content/Context;Landroid/net/Uri;Z[B)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, "result":Landroid/net/Uri;
    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/provider/CallLog$CallComposerLoggingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 288
    .end local v0    # "result":Landroid/net/Uri;
    goto :goto_4

    .line 286
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Landroid/provider/CallLog$CallComposerLoggingException;
    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 289
    .end local v0    # "e":Landroid/provider/CallLog$CallComposerLoggingException;
    :goto_4
    return-void

    .line 297
    .end local v8    # "pictureInsertionUri":Landroid/net/Uri;
    :cond_3
    sget-object v0, Landroid/provider/CallLog;->CALL_COMPOSER_PICTURE_URI:Landroid/net/Uri;

    sget-object v14, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 299
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 297
    invoke-static {v0, v14}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v14

    .line 302
    .local v14, "systemPictureInsertionUri":Landroid/net/Uri;
    nop

    .line 303
    :try_start_3
    invoke-static {v2, v14, v13, v9}, Landroid/provider/CallLog;->storeCallComposerPictureAtUri(Landroid/content/Context;Landroid/net/Uri;Z[B)Landroid/net/Uri;

    move-result-object v0

    move-object v13, v0

    .line 305
    .local v13, "systemInsertedPicture":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Inserting call composer for all users, succeeded with system, result is "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/CallLog$CallComposerLoggingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    nop

    .line 314
    invoke-static {v13}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 315
    .local v15, "strippedInsertionUri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 316
    .local v17, "u":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 317
    .local v8, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v8}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    const/4 v8, 0x0

    goto :goto_5

    .line 322
    :cond_4
    nop

    .line 323
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 322
    invoke-static {v2, v10, v0}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 325
    const/4 v8, 0x0

    goto :goto_5

    .line 328
    :cond_5
    invoke-virtual {v10, v8}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    invoke-virtual {v10, v8}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    nop

    .line 331
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 330
    invoke-static {v15, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v6

    .line 332
    .local v6, "insertionUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    .end local v10    # "userManager":Landroid/os/UserManager;
    .local v18, "userManager":Landroid/os/UserManager;
    const-string v10, "Inserting call composer for all users, now on user "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " inserting at "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v10, 0x0

    :try_start_4
    invoke-static {v2, v6, v10, v9}, Landroid/provider/CallLog;->storeCallComposerPictureAtUri(Landroid/content/Context;Landroid/net/Uri;Z[B)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/provider/CallLog$CallComposerLoggingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 342
    goto :goto_6

    .line 336
    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 337
    .restart local v0    # "e":Landroid/provider/CallLog$CallComposerLoggingException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing for user "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 329
    .end local v0    # "e":Landroid/provider/CallLog$CallComposerLoggingException;
    .end local v6    # "insertionUri":Landroid/net/Uri;
    .end local v18    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userManager":Landroid/os/UserManager;
    :cond_6
    move-object/from16 v18, v10

    .end local v10    # "userManager":Landroid/os/UserManager;
    .restart local v18    # "userManager":Landroid/os/UserManager;
    goto :goto_6

    .line 328
    .end local v18    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userManager":Landroid/os/UserManager;
    :cond_7
    move-object/from16 v18, v10

    .line 344
    .end local v8    # "userHandle":Landroid/os/UserHandle;
    .end local v10    # "userManager":Landroid/os/UserManager;
    .end local v17    # "u":Landroid/content/pm/UserInfo;
    .restart local v18    # "userManager":Landroid/os/UserManager;
    :goto_6
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v10, v18

    const/4 v8, 0x0

    goto/16 :goto_5

    .line 345
    .end local v18    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userManager":Landroid/os/UserManager;
    :cond_8
    invoke-interface {v1, v15}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 346
    return-void

    .line 307
    .end local v13    # "systemInsertedPicture":Landroid/net/Uri;
    .end local v15    # "strippedInsertionUri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    move-object/from16 v18, v10

    .line 308
    .end local v10    # "userManager":Landroid/os/UserManager;
    .restart local v0    # "e":Landroid/provider/CallLog$CallComposerLoggingException;
    .restart local v18    # "userManager":Landroid/os/UserManager;
    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 309
    return-void

    .line 245
    .end local v0    # "e":Landroid/provider/CallLog$CallComposerLoggingException;
    .end local v9    # "picData":[B
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "realUser":Landroid/os/UserHandle;
    .end local v14    # "systemPictureInsertionUri":Landroid/net/Uri;
    .end local v18    # "userManager":Landroid/os/UserManager;
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v4, v5, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v2, p2

    goto/16 :goto_0

    .line 235
    .end local v7    # "bytesRead":I
    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 236
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while reading call composer pic from input: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v2, Landroid/provider/CallLog$CallComposerLoggingException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/provider/CallLog$CallComposerLoggingException;-><init>(I)V

    invoke-interface {v1, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 240
    return-void
.end method

.method private static blacklist sendCallComposerError(Landroid/os/OutcomeReceiver;I)V
    .locals 1
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "*",
            "Landroid/provider/CallLog$CallComposerLoggingException;",
            ">;I)V"
        }
    .end annotation

    .line 392
    .local p0, "cb":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<*Landroid/provider/CallLog$CallComposerLoggingException;>;"
    new-instance v0, Landroid/provider/CallLog$CallComposerLoggingException;

    invoke-direct {v0, p1}, Landroid/provider/CallLog$CallComposerLoggingException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 393
    return-void
.end method

.method public static whitelist storeCallComposerPicture(Landroid/content/Context;Ljava/io/InputStream;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/net/Uri;",
            "Landroid/provider/CallLog$CallComposerLoggingException;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/Uri;Landroid/provider/CallLog$CallComposerLoggingException;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Landroid/provider/CallLog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3, p0}, Landroid/provider/CallLog$$ExternalSyntheticLambda0;-><init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private static blacklist storeCallComposerPictureAtUri(Landroid/content/Context;Landroid/net/Uri;Z[B)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertionUri"    # Landroid/net/Uri;
    .param p2, "forAllUsers"    # Z
    .param p3, "picData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/CallLog$CallComposerLoggingException;
        }
    .end annotation

    .line 354
    const-string v0, "CallLog"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "add_for_all_users"

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v3

    .line 361
    .local v2, "pictureFileUri":Landroid/net/Uri;
    nop

    .line 362
    if-eqz v2, :cond_3

    .line 368
    nop

    .line 369
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "w"

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    .local v5, "output":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v5, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    nop

    .line 380
    .end local v5    # "output":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 385
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    goto :goto_2

    .line 373
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 374
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got IOException writing to remote end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 377
    new-instance v7, Landroid/provider/CallLog$CallComposerLoggingException;

    invoke-direct {v7, v4}, Landroid/provider/CallLog$CallComposerLoggingException;-><init>(I)V

    .end local v2    # "pictureFileUri":Landroid/net/Uri;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "insertionUri":Landroid/net/Uri;
    .end local p2    # "forAllUsers":Z
    .end local p3    # "picData":[B
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "pictureFileUri":Landroid/net/Uri;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "insertionUri":Landroid/net/Uri;
    .restart local p2    # "forAllUsers":Z
    .restart local p3    # "picData":[B
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "pictureFileUri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "insertionUri":Landroid/net/Uri;
    .end local p2    # "forAllUsers":Z
    .end local p3    # "picData":[B
    :cond_2
    :goto_1
    throw v4
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 382
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pictureFileUri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "insertionUri":Landroid/net/Uri;
    .restart local p2    # "forAllUsers":Z
    .restart local p3    # "picData":[B
    :catch_1
    move-exception v1

    .line 384
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got IOException closing remote descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v2

    .line 380
    :catch_2
    move-exception v0

    .line 381
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid/provider/CallLog$CallComposerLoggingException;

    invoke-direct {v3, v1}, Landroid/provider/CallLog$CallComposerLoggingException;-><init>(I)V

    throw v3

    .line 365
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    new-instance v0, Landroid/provider/CallLog$CallComposerLoggingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/provider/CallLog$CallComposerLoggingException;-><init>(I)V

    throw v0

    .line 357
    .end local v2    # "pictureFileUri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/ParcelableException;
    new-instance v2, Landroid/provider/CallLog$CallComposerLoggingException;

    invoke-direct {v2, v1}, Landroid/provider/CallLog$CallComposerLoggingException;-><init>(I)V

    throw v2
.end method
