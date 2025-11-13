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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    nop

    const-string v2, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v3

    const-string v4, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    const-string v5, "BUNDLE_STRING_ITEM_TITLE"

    const-string v6, "BUNDLE_STRING_ITEM_MIMETYPE"

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_2

    :pswitch_0
    const-string v3, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v7, v3, v6}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object v5

    nop

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    invoke-direct {v7, v3, v6}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    nop

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v5

    nop

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    nop

    const-string v5, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setAlbumTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    nop

    const-string v5, "BUNDLE_STRING_ITEM_ARTIST"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setArtist(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    nop

    const-string v5, "BUNDLE_STRING_ITEM_GENRE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setGenre(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    nop

    const-string v5, "BUNDLE_LONG_ITEM_DURATION"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDuration(J)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    const-string v5, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDate(Ljava/util/Date;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    :cond_2
    const-string v5, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v9

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v9, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    :goto_1
    invoke-virtual {v4, v9}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDeliveryMode(Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    nop

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
