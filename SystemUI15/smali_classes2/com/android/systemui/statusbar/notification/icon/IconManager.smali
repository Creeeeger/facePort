.class public final Lcom/android/systemui/statusbar/notification/icon/IconManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final entryListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

.field public final iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

.field public final launcherApps:Landroid/content/pm/LauncherApps;

.field public final launcherPeopleAvatarIconJobs:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final sensitivityListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

.field public unimportantConversationKeys:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/icon/IconBuilder;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->launcherApps:Landroid/content/pm/LauncherApps;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->unimportantConversationKeys:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->entryListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->sensitivityListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

    return-void
.end method


# virtual methods
.method public final createIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "IconManager.createIcons"

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->createIconView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->createIconView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->createIconView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    invoke-static {v2, v4, v0, p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->buildPack(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;
    :try_end_1
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->buildEmptyPack(Lcom/android/systemui/statusbar/notification/icon/IconPack;)Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public final getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 12

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAppIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/app/Flags;->notificationsUseMonochromeAppIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    move-object v2, v4

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "No icon in notification from "

    if-eqz p2, :cond_c

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsBackgroundIcons()V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    :cond_5
    if-nez v4, :cond_8

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.messages"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    const-string v5, "android.messagingUser"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/Person;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-ltz v5, :cond_8

    :goto_2
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    if-eqz v7, :cond_6

    if-eq v7, p2, :cond_6

    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    goto :goto_3

    :cond_6
    if-gez v6, :cond_7

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_2

    :cond_8
    :goto_3
    if-nez v4, :cond_9

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_a

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_b

    sget-object p2, Lcom/android/internal/statusbar/StatusBarIcon$Type;->PeopleAvatar:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-static {}, Landroid/app/Flags;->notificationsUseMonochromeAppIcon()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v1}, Landroid/app/Notification;->shouldUseAppIcon()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon$Type;->MaybeMonochromeAppIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    move-object v1, v4

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon$Type;->NotifSmallIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :goto_5
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    move-object v11, p2

    check-cast v11, Lcom/android/internal/statusbar/StatusBarIcon$Type;

    if-eqz v7, :cond_15

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v8, p2, Landroid/app/Notification;->iconLevel:I

    iget v9, p2, Landroid/app/Notification;->number:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationContentDescription;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    invoke-static {}, Landroid/app/Flags;->notificationsUseAppIcon()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-static {}, Landroid/app/Flags;->notificationsUseMonochromeAppIcon()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_14

    iget-object p0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    sget-object p2, Lcom/android/internal/statusbar/StatusBarIcon$Type;->PeopleAvatar:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    if-ne p0, p2, :cond_f

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_8

    :cond_f
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_8

    :cond_10
    :goto_6
    iget-object p0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    if-nez p0, :cond_11

    goto :goto_7

    :cond_11
    sget-object p2, Lcom/android/systemui/statusbar/notification/icon/IconManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/android/internal/statusbar/StatusBarIcon$Type;->ordinal()I

    move-result p0

    aget v2, p2, p0

    :goto_7
    if-eq v2, v0, :cond_13

    const/4 p0, 0x2

    if-eq v2, p0, :cond_12

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_8

    :cond_12
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAppIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_8

    :cond_13
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    :cond_14
    :goto_8
    return-object v1

    :cond_15
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getIconDescriptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lkotlin/Pair;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->unimportantConversationKeys:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final recalculateForImportantConversationChange()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAreIconsAvailable:Z

    if-eqz v4, :cond_0

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->updateIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lkotlin/Unit;
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "IconManager"

    const-string v5, "Unable to update icon"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mShelfIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Icon;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    iget-boolean v0, p3, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    if-eq v0, p0, :cond_4

    iput-boolean p0, p3, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    :cond_4
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 p1, 0x15

    if-ge p0, p1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const p1, 0x7f0a0513

    invoke-virtual {p3, p1, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    :cond_6
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t create icon "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lkotlin/Unit;
    .locals 5

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "IconManager.updateIcons"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAreIconsAvailable:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsBackgroundIcons()V

    const-string v1, "IconManager"

    const-string v2, "Updating using the cache is not supported when the notifications_background_icons flag is off"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsBackgroundIcons()V

    :cond_3
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    const/4 v1, 0x0

    iput-object v1, p2, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object v1, p2, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationContentDescription;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_4
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_5

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    :cond_5
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mShelfIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    :cond_6
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    :cond_7
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_8
    return-object p0

    :goto_2
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_9
    throw p0
.end method
