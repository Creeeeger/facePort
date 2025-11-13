.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)V

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)V

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    iput v2, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    iput p0, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iput v2, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    :cond_3
    iget-object v10, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v10, :cond_5

    iget-object p0, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Must supply pending intent or shortcut to bubble"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    if-nez v10, :cond_7

    iget-object p0, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Must supply an icon or shortcut for the bubble"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    new-instance p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget v7, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v8, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget v9, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    const/4 v11, 0x0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$1;)V

    iget v0, v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    return-object p0
.end method

.method public static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V

    :goto_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    iget v2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    iget v2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    :cond_4
    iget p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    if-eqz p0, :cond_5

    invoke-virtual {v1, p0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    :cond_5
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method
