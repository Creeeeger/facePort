.class public Lcom/samsung/android/settings/theftprotection/receiver/PlaceEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/receiver/PlaceEventReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 p0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaceEventReceiver"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "place_category"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/theftprotection/location/LocationType;->UNKNOWN:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    sget-object v5, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    sget-object v6, Lcom/samsung/android/settings/theftprotection/location/LocationType;->WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    :goto_1
    move v8, v3

    goto :goto_3

    :cond_2
    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "FREQUENTLY_VISITED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_1
    const-string v8, "WORK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_2
    const-string v8, "HOME"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v7, p0

    :goto_2
    packed-switch v7, :pswitch_data_0

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    goto :goto_1

    :pswitch_0
    sget-object v3, Lcom/samsung/android/settings/theftprotection/location/LocationType;->OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v3}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {v5}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    goto :goto_1

    :goto_3
    const-string v3, "latitude"

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-string v7, "longitude"

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v7, "is_confident"

    invoke-virtual {v0, v7, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-ltz v0, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v0

    if-eq v8, v0, :cond_6

    invoke-virtual {v6}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v0

    if-ne v8, v0, :cond_1

    :cond_6
    move-object v7, p1

    move-wide v9, v3

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/theftprotection/utils/RecommendPlaceUtils;->updateRecommendPlace(Landroid/content/Context;IDD)V

    goto/16 :goto_0

    :cond_7
    const-string p0, "extras is null"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21ecdf -> :sswitch_2
        0x28bf11 -> :sswitch_1
        0x30efaba6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
