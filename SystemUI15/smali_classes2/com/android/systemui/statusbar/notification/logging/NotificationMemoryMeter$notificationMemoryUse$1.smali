.class final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    sget-object v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result v8

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result v9

    const-string v6, "android.largeIcon.big"

    invoke-static {v1, v6, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v6

    const-string v7, "android.picture"

    invoke-static {v1, v7, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v7

    const-string v10, "android.pictureIcon"

    invoke-static {v1, v10, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v10

    add-int v13, v10, v7

    const-string v7, "android.people.list"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/16 v16, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v10, v16

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Person;

    invoke-virtual {v11}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_0

    :cond_0
    move/from16 v10, v16

    :cond_1
    const-string v7, "android.callPerson"

    invoke-static {v1, v7, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v7

    const-string v11, "android.verificationIcon"

    invoke-static {v1, v11, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v11

    const-string v12, "android.messages"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    invoke-static {v12}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v14, v16

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v17, 0x0

    if-eqz v15, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v17

    :cond_2
    move-object/from16 v15, v17

    invoke-static {v15, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_1

    :cond_3
    const-string v12, "android.messages.historic"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    invoke-static {v12}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v15, v16

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v18

    move-object/from16 p0, v12

    move-object/from16 v12, v18

    goto :goto_3

    :cond_4
    move-object/from16 p0, v12

    move-object/from16 v12, v17

    :goto_3
    invoke-static {v12, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result v12

    add-int/2addr v15, v12

    move-object/from16 v12, p0

    goto :goto_2

    :cond_5
    const-string v12, "android.car.EXTENSIONS"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    move-result v18

    move/from16 p0, v4

    goto :goto_4

    :cond_6
    move/from16 p0, v4

    move/from16 v18, v16

    :goto_4
    const-string v4, "large_icon"

    invoke-static {v12, v4, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v4

    const-string v12, "android.tv.EXTENSIONS"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    move-result v12

    move-object/from16 p1, v3

    goto :goto_5

    :cond_7
    move-object/from16 p1, v3

    move/from16 v12, v16

    :goto_5
    const-string v3, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    move-result v19

    move-object/from16 v20, v0

    goto :goto_6

    :cond_8
    move-object/from16 v20, v0

    move/from16 v19, v16

    :goto_6
    const-string v0, "background"

    invoke-static {v3, v0, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    move-result v0

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ranker_group"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/16 v21, 0x4

    const/16 v22, 0x5

    const/16 v23, 0x2

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v2}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_a
    move-object/from16 v3, v17

    :goto_7
    if-nez v3, :cond_b

    move/from16 v3, v16

    goto/16 :goto_8

    :cond_b
    const-class v24, Landroid/app/Notification$BigTextStyle;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v3, v23

    goto :goto_8

    :cond_c
    const-class v5, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const-class v5, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move/from16 v3, v22

    goto :goto_8

    :cond_e
    const-class v5, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v3, 0x6

    goto :goto_8

    :cond_f
    const-class v5, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v3, v21

    goto :goto_8

    :cond_10
    const-class v5, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v3, 0x7

    goto :goto_8

    :cond_11
    const-class v5, Landroid/app/Notification$CallStyle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x3

    goto :goto_8

    :cond_12
    const/16 v3, -0x3e8

    :goto_8
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_14

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    move/from16 v2, v16

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v2, 0x1

    :goto_a
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    move-result v1

    new-instance v24, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    add-int/2addr v6, v10

    add-int/2addr v6, v7

    add-int/2addr v6, v11

    add-int/2addr v6, v14

    add-int v5, v6, v15

    add-int v18, v18, v4

    add-int v18, v18, v12

    add-int v18, v18, v19

    add-int v14, v18, v0

    move-object/from16 v7, v24

    move v10, v1

    move v11, v3

    move v12, v5

    move v15, v2

    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;-><init>(IIIIIIIZ)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    move-object/from16 v1, v20

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_15

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_b
    move-object v8, v0

    goto/16 :goto_1a

    :cond_15
    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_EXPANDED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v4, :cond_16

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    goto :goto_c

    :cond_16
    move-object/from16 v4, v17

    :goto_c
    aput-object v4, v5, v16

    invoke-static {v0, v3, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_CONTRACTED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/view/View;

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v5, :cond_17

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    goto :goto_d

    :cond_17
    move-object/from16 v5, v17

    :goto_d
    aput-object v5, v6, v16

    invoke-static {v0, v4, v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_HEADS_UP_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/View;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v6, :cond_18

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    goto :goto_e

    :cond_18
    move-object/from16 v6, v17

    :goto_e
    aput-object v6, v7, v16

    invoke-static {v0, v5, v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PUBLIC_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v7, :cond_19

    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    goto :goto_f

    :cond_19
    move-object/from16 v9, v17

    :goto_f
    aput-object v9, v8, v16

    if-eqz v7, :cond_1a

    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    :goto_10
    const/4 v10, 0x1

    goto :goto_11

    :cond_1a
    move-object/from16 v9, v17

    goto :goto_10

    :goto_11
    aput-object v9, v8, v10

    if-eqz v7, :cond_1b

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    goto :goto_12

    :cond_1b
    move-object/from16 v7, v17

    :goto_12
    aput-object v7, v8, v23

    invoke-static {v0, v6, v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object v0

    filled-new-array {v3, v4, v5, v0}, [Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_23

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v6, :cond_1c

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    goto :goto_13

    :cond_1c
    move-object/from16 v7, v17

    :goto_13
    aput-object v7, v5, v16

    if-eqz v6, :cond_1d

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    :goto_14
    const/4 v8, 0x1

    goto :goto_15

    :cond_1d
    move-object/from16 v7, v17

    goto :goto_14

    :goto_15
    aput-object v7, v5, v8

    if-eqz v6, :cond_1e

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    goto :goto_16

    :cond_1e
    move-object/from16 v6, v17

    :goto_16
    aput-object v6, v5, v23

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v2, :cond_1f

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    :goto_17
    const/4 v7, 0x3

    goto :goto_18

    :cond_1f
    move-object/from16 v6, v17

    goto :goto_17

    :goto_18
    aput-object v6, v5, v7

    if-eqz v2, :cond_20

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    goto :goto_19

    :cond_20
    move-object/from16 v6, v17

    :goto_19
    aput-object v6, v5, v21

    if-eqz v2, :cond_21

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v17, v2

    :cond_21
    aput-object v17, v5, v22

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object v2

    if-nez v2, :cond_22

    goto/16 :goto_b

    :cond_22
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_b

    :cond_23
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_b

    :goto_1a
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p0

    move-object/from16 v7, v24

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;Ljava/util/List;)V

    return-object v0
.end method
