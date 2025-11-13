.class public Landroid/service/notification/ZenAdapters;
.super Ljava/lang/Object;
.source "ZenAdapters.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist notificationPolicyConversationSendersToZenPolicy(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;
    .locals 3

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    nop

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->notificationPolicyConversationSendersToZenPolicy(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v1

    if-eqz v1, :cond_2

    nop

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    :cond_3
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist peopleTypeToPrioritySenders(II)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist prioritySendersToPeopleType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x3

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist zenPolicyConversationSendersToNotificationPolicy(II)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
