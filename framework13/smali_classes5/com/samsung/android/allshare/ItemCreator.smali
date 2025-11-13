.class Lcom/samsung/android/allshare/ItemCreator;
.super Ljava/lang/Object;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createMediaServerItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 5
    .param p0, "itemBundle"    # Landroid/os/Bundle;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":Lcom/samsung/android/allshare/Item;
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "itemType":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    .line 137
    .local v2, "mediaType":Lcom/samsung/android/allshare/Item$MediaType;
    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :pswitch_0
    goto :goto_0

    .line 148
    :pswitch_1
    new-instance v3, Lcom/samsung/android/allshare/FolderItemImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    move-object v0, v3

    .line 149
    goto :goto_0

    .line 145
    :pswitch_2
    new-instance v3, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    move-object v0, v3

    .line 146
    goto :goto_0

    .line 142
    :pswitch_3
    new-instance v3, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    move-object v0, v3

    .line 143
    goto :goto_0

    .line 139
    :pswitch_4
    new-instance v3, Lcom/samsung/android/allshare/AudioItemImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    move-object v0, v3

    .line 140
    nop

    .line 155
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 11
    .param p0, "itemBundle"    # Landroid/os/Bundle;

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Lcom/samsung/android/allshare/Item;
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 66
    return-object v1

    .line 68
    :cond_0
    nop

    .line 69
    const-string v2, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "itemConstructor":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 74
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v1

    .line 76
    .local v1, "conType":Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    const-string v5, "BUNDLE_STRING_ITEM_TITLE"

    const-string v6, "BUNDLE_STRING_ITEM_MIMETYPE"

    packed-switch v3, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 115
    :pswitch_0
    const-string v3, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "mimeType":Ljava/lang/String;
    new-instance v7, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v7, v3, v6}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v7, "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    nop

    .line 119
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {v7, v5}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object v5

    .line 120
    .end local v7    # "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .local v5, "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    nop

    .line 121
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v5, v4}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object v4

    .line 122
    .end local v5    # "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .local v4, "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    .line 123
    goto/16 :goto_2

    .line 81
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .end local v6    # "mimeType":Ljava/lang/String;
    :pswitch_1
    const-string v3, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 82
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .restart local v6    # "mimeType":Ljava/lang/String;
    new-instance v7, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    invoke-direct {v7, v3, v6}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 84
    .local v7, "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    nop

    .line 85
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v7, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v5

    .line 86
    .end local v7    # "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .local v5, "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    nop

    .line 87
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v5, v4}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 88
    .end local v5    # "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .local v4, "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    nop

    .line 89
    const-string v5, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setAlbumTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 90
    nop

    .line 91
    const-string v5, "BUNDLE_STRING_ITEM_ARTIST"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setArtist(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 92
    nop

    .line 93
    const-string v5, "BUNDLE_STRING_ITEM_GENRE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setGenre(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 94
    nop

    .line 95
    const-string v5, "BUNDLE_LONG_ITEM_DURATION"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 94
    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDuration(J)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 96
    const-string v5, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 98
    .local v7, "dateTime":J
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 99
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDate(Ljava/util/Date;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 102
    :cond_2
    const-string v5, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "playModeStr":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 104
    .local v9, "deliverymode":Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    .line 107
    :cond_3
    invoke-static {v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v9

    goto :goto_1

    .line 105
    :cond_4
    :goto_0
    sget-object v9, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 110
    :goto_1
    invoke-virtual {v4, v9}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDeliveryMode(Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    .line 112
    goto :goto_2

    .line 78
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .end local v5    # "playModeStr":Ljava/lang/String;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "dateTime":J
    .end local v9    # "deliverymode":Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/allshare/ItemCreator;->createMediaServerItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v0

    .line 79
    nop

    .line 129
    :goto_2
    return-object v0

    .line 72
    .end local v1    # "conType":Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    :cond_5
    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
