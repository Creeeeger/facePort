.class public abstract Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLoggerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final cancellationReasonDebugString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "REASON_ASSISTANT_CANCEL"

    goto :goto_0

    :pswitch_1
    const-string v0, "REASON_CLEAR_DATA"

    goto :goto_0

    :pswitch_2
    const-string v0, "REASON_CHANNEL_REMOVED"

    goto :goto_0

    :pswitch_3
    const-string v0, "REASON_TIMEOUT"

    goto :goto_0

    :pswitch_4
    const-string v0, "REASON_SNOOZED"

    goto :goto_0

    :pswitch_5
    const-string v0, "REASON_CHANNEL_BANNED"

    goto :goto_0

    :pswitch_6
    const-string v0, "REASON_UNAUTOBUNDLED"

    goto :goto_0

    :pswitch_7
    const-string v0, "REASON_PROFILE_TURNED_OFF"

    goto :goto_0

    :pswitch_8
    const-string v0, "REASON_PACKAGE_SUSPENDED"

    goto :goto_0

    :pswitch_9
    const-string v0, "REASON_GROUP_OPTIMIZATION"

    goto :goto_0

    :pswitch_a
    const-string v0, "REASON_GROUP_SUMMARY_CANCELED"

    goto :goto_0

    :pswitch_b
    const-string v0, "REASON_LISTENER_CANCEL_ALL"

    goto :goto_0

    :pswitch_c
    const-string v0, "REASON_LISTENER_CANCEL"

    goto :goto_0

    :pswitch_d
    const-string v0, "REASON_APP_CANCEL_ALL"

    goto :goto_0

    :pswitch_e
    const-string v0, "REASON_APP_CANCEL"

    goto :goto_0

    :pswitch_f
    const-string v0, "REASON_PACKAGE_BANNED"

    goto :goto_0

    :pswitch_10
    const-string v0, "REASON_USER_STOPPED"

    goto :goto_0

    :pswitch_11
    const-string v0, "REASON_PACKAGE_CHANGED"

    goto :goto_0

    :pswitch_12
    const-string v0, "REASON_ERROR"

    goto :goto_0

    :pswitch_13
    const-string v0, "REASON_CANCEL_ALL"

    goto :goto_0

    :pswitch_14
    const-string v0, "REASON_CANCEL"

    goto :goto_0

    :pswitch_15
    const-string v0, "REASON_CLICK"

    goto :goto_0

    :pswitch_16
    const-string v0, "REASON_UNKNOWN"

    goto :goto_0

    :pswitch_17
    const-string v0, "REASON_NOT_CANCELED"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
