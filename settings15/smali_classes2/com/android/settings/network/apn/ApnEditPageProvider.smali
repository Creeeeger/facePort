.class public final Lcom/android/settings/network/apn/ApnEditPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/network/apn/ApnEditPageProvider;

.field public static final parameter:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/network/apn/ApnEditPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/apn/ApnEditPageProvider;->INSTANCE:Lcom/android/settings/network/apn/ApnEditPageProvider;

    const-string v0, "uriType"

    sget-object v1, Lcom/android/settings/network/apn/ApnEditPageProvider$parameter$1;->INSTANCE:Lcom/android/settings/network/apn/ApnEditPageProvider$parameter$1;

    invoke-static {v0, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    const-string v1, "uri"

    sget-object v2, Lcom/android/settings/network/apn/ApnEditPageProvider$parameter$2;->INSTANCE:Lcom/android/settings/network/apn/ApnEditPageProvider$parameter$2;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    const-string v2, "subId"

    sget-object v3, Lcom/android/settings/network/apn/ApnEditPageProvider$parameter$3;->INSTANCE:Lcom/android/settings/network/apn/ApnEditPageProvider$parameter$3;

    invoke-static {v2, v3}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditPageProvider;->parameter:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 88

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x4d38d8db    # 1.9382622E8f

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "uri"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "decode(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "subId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uriType"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    :goto_0
    move-object/from16 v30, v3

    move/from16 v31, v5

    :cond_0
    const/4 v5, 0x0

    const/4 v14, 0x0

    goto/16 :goto_13

    :cond_1
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v7

    const-string v12, "ApnStatus"

    if-nez v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Insert request not for carrier table. Uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "editUrl"

    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v11, "insertUrl"

    const-string v10, ""

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/settings/network/apn/ApnRepositoryKt;->Projection:[Ljava/lang/String;

    const-string v8, "getString(...)"

    new-instance v38, Lcom/android/settings/network/apn/ApnData;

    move-object/from16 v16, v38

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const v37, 0xffffff

    invoke-direct/range {v16 .. v37}, Lcom/android/settings/network/apn/ApnData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJIII)V

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v16, Lcom/android/settings/network/apn/ApnRepositoryKt;->Projection:[Ljava/lang/String;

    const/16 v17, 0x0

    move-object v15, v8

    move-object v8, v4

    move v14, v9

    move-object/from16 v9, v16

    move-object/from16 v39, v10

    move-object/from16 v10, v19

    move-object/from16 v40, v11

    move-object/from16 v11, v17

    move-object/from16 v41, v12

    move-object/from16 v12, v18

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v38, Lcom/android/settings/network/apn/ApnData;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const-string v8, "name"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "apn"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "proxy"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "port"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "user"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "password"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mmsc"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mmsproxy"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v3

    const-string v3, "mmsport"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v31, v5

    const-string v5, "authtype"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    const-string v5, "type"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v13

    const-string v13, "protocol"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v13}, Lcom/android/settings/network/apn/ApnRepositoryKt;->convertProtocol2Options(Landroid/content/Context;Ljava/lang/String;)I

    move-result v56

    const-string v13, "roaming_protocol"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v13}, Lcom/android/settings/network/apn/ApnRepositoryKt;->convertProtocol2Options(Landroid/content/Context;Ljava/lang/String;)I

    move-result v57

    const-string v13, "carrier_enabled"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_3

    move/from16 v58, v15

    goto :goto_1

    :cond_3
    const/16 v58, 0x0

    :goto_1
    const-string v13, "network_type_bitmask"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    const-string v13, "edited"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    const-string v13, "user_editable"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    const/high16 v63, 0xf80000

    move-object/from16 v42, v38

    move-object/from16 v44, v8

    move-object/from16 v45, v9

    move-object/from16 v46, v10

    move-object/from16 v47, v11

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    move-object/from16 v50, v0

    move-object/from16 v51, v1

    move-object/from16 v52, v2

    move-object/from16 v53, v3

    move-object/from16 v55, v5

    invoke-direct/range {v42 .. v63}, Lcom/android/settings/network/apn/ApnData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object/from16 v0, v38

    const/4 v1, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object/from16 v30, v3

    move/from16 v31, v5

    move-object/from16 v17, v13

    move v15, v14

    goto :goto_2

    :goto_3
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_4
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnData;->name:Ljava/lang/String;

    move-object/from16 v3, v39

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t get apnData from Uri "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ApnRepository"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v64, v0

    move-object/from16 v0, v17

    move-object/from16 v2, v40

    goto :goto_5

    :cond_6
    move-object/from16 v30, v3

    move/from16 v31, v5

    move v15, v9

    move-object v3, v10

    move-object v2, v11

    move-object/from16 v41, v12

    move-object v0, v13

    const/4 v1, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/settings/network/apn/ApnData;

    move-object/from16 v42, v5

    const/16 v62, 0x0

    const v63, 0xffffff

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    invoke-direct/range {v42 .. v63}, Lcom/android/settings/network/apn/ApnData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJIII)V

    move-object/from16 v64, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v84, 0x0

    const v87, 0xefffff

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const-wide/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    invoke-static/range {v64 .. v87}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v0

    goto :goto_6

    :cond_7
    move-object/from16 v0, v64

    :goto_6
    const/16 v25, 0x0

    const v29, 0xdfffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v2, v15

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v1, v6

    move-object v6, v0

    move/from16 v26, v31

    invoke-static/range {v6 .. v29}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v0

    const-string v6, "carrier_config"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.telephony.CarrierConfigManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    const-string v9, "apn_settings_default_apn_types_string_array"

    const-string v10, "apn.settings_default_protocol_string"

    const-string v7, "read_only_apn_types_string_array"

    const-string v8, "read_only_apn_fields_string_array"

    const-string v11, "apn.settings_default_roaming_protocol_string"

    const-string v12, "allow_adding_apns_bool"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/android/settings/network/apn/ApnData;->subId:I

    invoke-virtual {v6, v8, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    const-string v7, "getConfigForSubId(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "read_only_apn_types_string_array"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    :goto_7
    move-object v10, v7

    goto :goto_8

    :cond_8
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_7

    :goto_8
    const-string v7, "read_only_apn_fields_string_array"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_9

    :goto_9
    move-object v11, v7

    goto :goto_a

    :cond_9
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_9

    :goto_a
    const-string v7, "apn_settings_default_apn_types_string_array"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v12, v14

    goto :goto_b

    :cond_a
    const/4 v12, 0x0

    :goto_b
    const-string v7, "apn.settings_default_protocol_string"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    move-object v13, v3

    goto :goto_c

    :cond_b
    move-object v13, v7

    :goto_c
    const-string v7, "apn.settings_default_roaming_protocol_string"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    move-object v14, v3

    goto :goto_d

    :cond_c
    move-object v14, v7

    :goto_d
    const-string v3, "allow_adding_apns_bool"

    invoke-virtual {v6, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    new-instance v3, Lcom/android/settings/network/apn/CustomizedConfig;

    const/4 v15, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/settings/network/apn/CustomizedConfig;-><init>(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v6, v3, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_d

    iget-object v6, v3, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read only APN type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnStatusKt;->getCarrierCustomizedConfig$log(Ljava/lang/String;)V

    :cond_d
    iget-object v14, v3, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    if-eqz v14, :cond_f

    move-object v6, v14

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_e

    goto :goto_e

    :cond_e
    const/4 v14, 0x0

    :goto_e
    if-eqz v14, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "default apn types: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnStatusKt;->getCarrierCustomizedConfig$log(Ljava/lang/String;)V

    :cond_f
    iget-object v6, v3, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    const-string v7, "default apn protocol: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnStatusKt;->getCarrierCustomizedConfig$log(Ljava/lang/String;)V

    :cond_10
    iget-object v6, v3, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_11

    const-string v7, "default apn roaming protocol: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnStatusKt;->getCarrierCustomizedConfig$log(Ljava/lang/String;)V

    :cond_11
    iget-boolean v6, v3, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    if-nez v6, :cond_12

    const-string v6, "not allow to add new APN"

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnStatusKt;->getCarrierCustomizedConfig$log(Ljava/lang/String;)V

    :cond_12
    const/16 v61, 0x0

    const v65, 0x7fffff

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v42, v0

    move-object/from16 v64, v3

    invoke-static/range {v42 .. v65}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v6

    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnData;->newApn:Z

    const-string v3, "*"

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    const-string v0, "customizedConfig"

    iget-object v7, v6, Lcom/android/settings/network/apn/ApnData;->customizedConfig:Lcom/android/settings/network/apn/CustomizedConfig;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    if-nez v0, :cond_16

    iget-object v0, v7, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_10

    :cond_13
    sget-object v7, Lcom/android/settings/network/apn/ApnTypes;->PreSelectedTypes:Ljava/util/Set;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_15
    move-object v0, v8

    :cond_16
    :goto_10
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, ","

    const/4 v9, 0x0

    const/16 v12, 0x3e

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v18

    const/16 v26, 0x0

    const v29, 0xffefff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v6 .. v29}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v6

    :cond_17
    move-object/from16 v42, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v60

    const/16 v62, 0x0

    const v65, 0xf7ffff

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-static/range {v42 .. v65}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isReadOnly: edited "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/settings/network/apn/ApnData;->edited:I

    move-object/from16 v7, v41

    invoke-static {v0, v1, v7}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnData;->customizedConfig:Lcom/android/settings/network/apn/CustomizedConfig;

    if-ne v1, v2, :cond_18

    goto :goto_11

    :cond_18
    iget v1, v6, Lcom/android/settings/network/apn/ApnData;->userEditable:I

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    const-string v8, "apnType"

    iget-object v9, v6, Lcom/android/settings/network/apn/ApnData;->apnType:Ljava/lang/String;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "readOnlyTypes"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/settings/network/apn/ApnTypes;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_1e

    :cond_19
    check-cast v8, Ljava/lang/Iterable;

    instance-of v3, v8, Ljava/util/Collection;

    if-eqz v3, :cond_1a

    move-object v3, v8

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    goto :goto_12

    :cond_1c
    :goto_11
    iget-object v0, v0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disableInit: readOnlyApnFields "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object v14, v6

    goto :goto_13

    :cond_1e
    :goto_12
    const-string v1, "disableInit: read-only APN"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, v0, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    iget-object v11, v0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    iget-object v12, v0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    iget-object v13, v0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    const-string v1, "readOnlyApnTypes"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "readOnlyApnFields"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultApnProtocol"

    iget-object v14, v0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultApnRoamingProtocol"

    iget-object v15, v0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v28, Lcom/android/settings/network/apn/CustomizedConfig;

    const/4 v9, 0x1

    move-object/from16 v8, v28

    invoke-direct/range {v8 .. v15}, Lcom/android/settings/network/apn/CustomizedConfig;-><init>(ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v29, 0x7fffff

    invoke-static/range {v6 .. v29}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v0

    move-object v14, v0

    :goto_13
    if-nez v14, :cond_20

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProvider$Page$apnDataInit$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    invoke-direct {v1, v2, v3, v6}, Lcom/android/settings/network/apn/ApnEditPageProvider$Page$apnDataInit$1;-><init>(Lcom/android/settings/network/apn/ApnEditPageProvider;Landroid/os/Bundle;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    const v0, -0x39c20899

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v7, :cond_21

    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v14, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v5, 0x238

    invoke-static {v14, v0, v4, v1, v5}, Lcom/android/settings/network/apn/ApnEditPageProviderKt;->ApnPage(Lcom/android/settings/network/apn/ApnData;Landroidx/compose/runtime/MutableState;Landroid/net/Uri;Landroidx/compose/runtime/Composer;I)V

    const/16 v0, 0x40

    move/from16 v4, v31

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/settings/network/apn/ApnEditPageProvider;->SubscriptionNotEnabledEffect(ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProvider$Page$1;

    invoke-direct {v1, v2, v3, v6}, Lcom/android/settings/network/apn/ApnEditPageProvider$Page$1;-><init>(Lcom/android/settings/network/apn/ApnEditPageProvider;Landroid/os/Bundle;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method

.method public final SubscriptionNotEnabledEffect(ILandroidx/compose/runtime/Composer;I)V
    .locals 5

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x34a23d9f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v0, v0, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProvider$SubscriptionNotEnabledEffect$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p1, v1, v4}, Lcom/android/settings/network/apn/ApnEditPageProvider$SubscriptionNotEnabledEffect$1;-><init>(Landroid/content/Context;ILcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/settings/network/apn/ApnEditPageProvider$SubscriptionNotEnabledEffect$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/network/apn/ApnEditPageProvider$SubscriptionNotEnabledEffect$2;-><init>(Lcom/android/settings/network/apn/ApnEditPageProvider;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ApnEdit"

    return-object p0
.end method

.method public final getParameter()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/android/settings/network/apn/ApnEditPageProvider;->parameter:Ljava/util/List;

    return-object p0
.end method
