.class public final Lcom/android/settingslib/media/InfoMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public getDrawableResIdByType()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f080493

    goto :goto_0

    :pswitch_0
    const p0, 0x7f080627

    goto :goto_0

    :pswitch_1
    const p0, 0x7f080492

    goto :goto_0

    :pswitch_2
    const p0, 0x7f080489

    goto :goto_0

    :pswitch_3
    const p0, 0x7f08048c

    goto :goto_0

    :pswitch_4
    const p0, 0x7f08048a

    goto :goto_0

    :pswitch_5
    const p0, 0x7f0803dd

    goto :goto_0

    :pswitch_6
    const p0, 0x7f080498

    goto :goto_0

    :cond_0
    const p0, 0x7f08048d

    goto :goto_0

    :cond_1
    const p0, 0x7f08048b

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
