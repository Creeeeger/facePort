.class public Lcom/samsung/android/allshare/extension/ItemExtractor;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_TAG:Ljava/lang/String; = "ItemExtractor"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist create(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;
    .locals 9
    .param p0, "seedString"    # Ljava/lang/String;

    .line 342
    invoke-static {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object v0

    .line 343
    .local v0, "seed":Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    const/4 v1, 0x0

    const-string v2, "ItemExtractor"

    if-nez v0, :cond_0

    .line 344
    const-string v3, "create : return seed is null"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-object v1

    .line 348
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getItemType()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "typeString":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v4

    .line 352
    .local v4, "type":Lcom/samsung/android/allshare/Item$MediaType;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getObjectID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getProviderID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    const-string v7, "MEDIA_SERVER"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getItemUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getFileSize()J

    move-result-wide v6

    const-string v8, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    sget-object v6, Lcom/samsung/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create : type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-object v1

    .line 376
    :pswitch_0
    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 371
    :pswitch_1
    nop

    .line 372
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSubtitle()Landroid/net/Uri;

    move-result-object v1

    .line 371
    const-string v2, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v1

    const-string v6, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 374
    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 369
    :pswitch_2
    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 366
    :pswitch_3
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v1

    const-string v6, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 367
    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist extract(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .locals 19
    .param p0, "item"    # Lcom/samsung/android/allshare/Item;

    .line 393
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "ItemExtractor"

    if-nez v0, :cond_0

    .line 394
    const-string v3, "extract : return item is null"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v1

    .line 398
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 399
    .local v3, "p":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/allshare/Item;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 402
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 403
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 405
    const-string v5, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "typeString":Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v6

    .line 408
    .local v6, "type":Lcom/samsung/android/allshare/Item$MediaType;
    const-string v7, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "objId":Ljava/lang/String;
    const-string v8, "BUNDLE_STRING_ID"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, "providerId":Ljava/lang/String;
    const-string v9, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "constructorKey":Ljava/lang/String;
    const-string v10, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, "title":Ljava/lang/String;
    const-string v11, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 413
    .local v11, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 414
    .local v12, "subtitle":Landroid/net/Uri;
    const-string v13, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 415
    .local v13, "mime":Ljava/lang/String;
    const-string v14, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 416
    .local v14, "filesize":Ljava/lang/Long;
    const-wide/16 v15, -0x1

    .line 418
    .local v15, "duration":J
    sget-object v17, Lcom/samsung/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    move-wide v0, v15

    goto :goto_0

    .line 420
    :pswitch_1
    const-string v1, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/net/Uri;

    .line 421
    const-string v1, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 422
    move-wide v0, v15

    goto :goto_0

    .line 425
    :pswitch_2
    const-string v1, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 426
    move-wide v0, v15

    .line 433
    .end local v15    # "duration":J
    .local v0, "duration":J
    :goto_0
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    move-wide v15, v0

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 438
    :cond_1
    if-nez v10, :cond_2

    .line 439
    const-string v15, "extract : Title is null"

    invoke-static {v2, v15}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x0

    return-object v2

    .line 443
    :cond_2
    if-eqz v9, :cond_4

    const-string v15, "MEDIA_SERVER"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_1

    .line 444
    :cond_3
    const-string v15, "ItemExtractor support only MEDIA_SERVER Item"

    invoke-static {v2, v15}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_4
    :goto_1
    const-string v15, ",@,#,"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 449
    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-wide v15, v0

    goto :goto_2

    .line 457
    :cond_5
    new-instance v2, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    const/4 v15, 0x0

    invoke-direct {v2, v15}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed-IA;)V

    .line 458
    .local v2, "seed":Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmItemType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    .line 459
    invoke-static {v2, v7}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmObjectId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    .line 460
    invoke-static {v2, v8}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmProviderId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    .line 461
    invoke-static {v2, v10}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmTitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    .line 462
    invoke-static {v2, v12}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmSubtitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V

    .line 463
    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmDuration(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V

    .line 464
    invoke-static {v2, v11}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmItemUri(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V

    .line 465
    invoke-static {v2, v13}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmMimeType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    .line 466
    move-wide v15, v0

    .end local v0    # "duration":J
    .restart local v15    # "duration":J
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmFileSize(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V

    .line 468
    return-object v2

    .line 448
    .end local v2    # "seed":Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .end local v15    # "duration":J
    .restart local v0    # "duration":J
    :cond_6
    move-wide v15, v0

    .line 450
    .end local v0    # "duration":J
    .restart local v15    # "duration":J
    :goto_2
    const-string v0, "ItemExtractor doesn\'t suppport object id or provider id that contains DELIMITER"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 433
    .end local v15    # "duration":J
    .restart local v0    # "duration":J
    :cond_7
    move-wide v15, v0

    const/4 v0, 0x0

    .line 434
    .end local v0    # "duration":J
    .restart local v15    # "duration":J
    :goto_3
    const-string v1, "extract : return something is empty"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
