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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist create(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ItemExtractor"

    if-nez v0, :cond_0

    const-string v3, "create : return seed is null"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getObjectID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "BUNDLE_STRING_ID"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getProviderID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    const-string v7, "MEDIA_SERVER"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getItemUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getFileSize()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v6, Lcom/samsung/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

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

    return-object v1

    :pswitch_0
    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_1
    nop

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSubtitle()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;

    invoke-direct {v1, v5}, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_3
    const-string v1, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

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

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "ItemExtractor"

    if-nez v0, :cond_0

    const-string v3, "extract : return item is null"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/allshare/Item;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    const-string v5, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BUNDLE_STRING_ID"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    const/4 v12, 0x0

    const-string v13, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v15, -0x1

    sget-object v17, Lcom/samsung/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    move-wide v0, v15

    goto :goto_0

    :pswitch_1
    const-string v1, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/net/Uri;

    const-string v1, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v0, v15

    goto :goto_0

    :pswitch_2
    const-string v1, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v0, v15

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

    goto :goto_3

    :cond_1
    if-nez v10, :cond_2

    const-string v15, "extract : Title is null"

    invoke-static {v2, v15}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_2
    if-eqz v9, :cond_4

    const-string v15, "MEDIA_SERVER"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_1

    :cond_3
    const-string v15, "ItemExtractor support only MEDIA_SERVER Item"

    invoke-static {v2, v15}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    const-string v15, ",@,#,"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-wide v15, v0

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    const/4 v15, 0x0

    invoke-direct {v2, v15}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed-IA;)V

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$MediaType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmItemType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmObjectId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmProviderId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmTitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {v2, v12}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmSubtitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V

    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmDuration(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V

    invoke-static {v2, v11}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmItemUri(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V

    invoke-static {v2, v13}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmMimeType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    move-wide v15, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmFileSize(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V

    return-object v2

    :cond_6
    move-wide v15, v0

    :goto_2
    const-string v0, "ItemExtractor doesn\'t suppport object id or provider id that contains DELIMITER"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_7
    move-wide v15, v0

    const/4 v0, 0x0

    :goto_3
    const-string v1, "extract : return something is empty"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
