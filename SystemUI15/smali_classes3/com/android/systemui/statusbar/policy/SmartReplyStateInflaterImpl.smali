.class public final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;


# instance fields
.field public final activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public final devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

.field public final packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

.field public final smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflater;

.field public final smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflater;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/PackageManagerWrapper;Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;Lcom/android/systemui/statusbar/policy/SmartReplyInflater;Lcom/android/systemui/statusbar/policy/SmartActionInflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflater;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflater;

    return-void
.end method


# virtual methods
.method public final inflateSmartReplyState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEnabled:Z

    const/4 v8, 0x0

    if-nez v7, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Smart suggestions not enabled, not adding suggestions for "

    const-string v2, "SmartReplyViewInflater"

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    invoke-direct {v0, v8, v8, v8, v3}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;Z)V

    goto/16 :goto_f

    :cond_1
    iget-object v7, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mRequiresTargetingP:Z

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v9, 0x1c

    if-lt v7, v9, :cond_2

    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v5

    :goto_1
    invoke-virtual {v2}, Landroid/app/Notification;->getContextualActions()Ljava/util/List;

    move-result-object v9

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Action;

    iget-object v7, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_5

    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/app/RemoteInput;

    invoke-virtual {v10}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_5

    array-length v10, v10

    if-nez v10, :cond_4

    move v10, v5

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_2
    xor-int/2addr v10, v5

    if-ne v10, v5, :cond_5

    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/app/RemoteInput;

    invoke-virtual {v11}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/app/RemoteInput;

    invoke-direct {v10, v11, v4, v7, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;-><init>(Ljava/util/List;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V

    goto :goto_3

    :cond_5
    move-object v10, v8

    :goto_3
    move-object v4, v9

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    new-instance v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-direct {v4, v9, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;-><init>(Ljava/util/List;Z)V

    goto :goto_4

    :cond_6
    move-object v4, v8

    :goto_4
    if-nez v10, :cond_c

    if-nez v4, :cond_c

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object v7

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v0

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v5

    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/app/Notification$Action;

    invoke-virtual {v9}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/app/Notification$Action;

    iget-object v9, v9, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_7

    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/app/RemoteInput;

    invoke-direct {v10, v7, v6, v9, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;-><init>(Ljava/util/List;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V

    :cond_7
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_c

    invoke-virtual {v2}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, v5, :cond_b

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_9

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    :try_start_1
    sget-object v11, Lcom/android/systemui/shared/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    int-to-long v14, v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    invoke-interface/range {v11 .. v16}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v8

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->sDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_9
    move v0, v3

    :goto_7
    if-eqz v0, :cond_8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-object v0, v4

    :catch_1
    :cond_b
    new-instance v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;-><init>(Ljava/util/List;Z)V

    :cond_c
    if-eqz v4, :cond_10

    iget-object v0, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    invoke-virtual {v1}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v1

    const/16 v6, 0xc

    if-ne v1, v6, :cond_f

    move v1, v5

    goto :goto_8

    :cond_f
    move v1, v3

    :goto_8
    if-eqz v1, :cond_e

    move v0, v5

    goto :goto_a

    :cond_10
    :goto_9
    move v0, v3

    :goto_a
    if-eqz v0, :cond_16

    iget-object v1, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v1

    move v7, v3

    move v9, v7

    :goto_b
    if-ge v7, v6, :cond_15

    aget-object v11, v1, v7

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v11

    if-eqz v11, :cond_12

    array-length v11, v11

    if-nez v11, :cond_11

    move v11, v5

    goto :goto_c

    :cond_11
    move v11, v3

    :goto_c
    xor-int/2addr v11, v5

    if-ne v11, v5, :cond_12

    move v11, v5

    goto :goto_d

    :cond_12
    move v11, v3

    :goto_d
    if-eqz v11, :cond_13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_e

    :cond_13
    move-object v9, v8

    :goto_e
    if-eqz v9, :cond_14

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v7, v7, 0x1

    move v9, v12

    goto :goto_b

    :cond_15
    new-instance v8, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    invoke-direct {v8, v2}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;-><init>(Ljava/util/List;)V

    :cond_16
    new-instance v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    invoke-direct {v1, v10, v4, v8, v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;Z)V

    move-object v0, v1

    :goto_f
    return-object v0
.end method

.method public final inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;
    .locals 16

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const/4 v2, 0x1

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    invoke-direct {v0, v4, v4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    :goto_0
    move v0, v2

    goto/16 :goto_10

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->hasPhishingAction:Z

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->hasPhishingAction:Z

    if-eq v5, v6, :cond_3

    :cond_2
    :goto_1
    move v0, v3

    goto/16 :goto_10

    :cond_3
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_5

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_5
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    goto :goto_3

    :cond_6
    move-object v6, v4

    :goto_3
    if-nez v6, :cond_7

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_7
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->suppressedActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;->suppressedActionIndices:Ljava/util/List;

    if-nez v5, :cond_a

    :cond_9
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_a
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->suppressedActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    if-eqz v6, :cond_b

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;->suppressedActionIndices:Ljava/util/List;

    if-nez v6, :cond_c

    :cond_b
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_c
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    goto :goto_4

    :cond_e
    move-object v0, v4

    :goto_4
    if-nez v0, :cond_f

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_f
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-eqz v5, :cond_10

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    goto :goto_5

    :cond_10
    move-object v5, v4

    :goto_5
    if-nez v5, :cond_11

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_11
    if-ne v0, v5, :cond_13

    :cond_12
    move v0, v3

    goto/16 :goto_f

    :cond_13
    if-eqz v0, :cond_15

    if-nez v5, :cond_14

    goto :goto_6

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_16

    :cond_15
    :goto_6
    move v0, v2

    goto/16 :goto_f

    :cond_16
    move v6, v3

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$Action;

    iget-object v10, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v11, v8, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    goto :goto_6

    :cond_17
    invoke-virtual {v7}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual {v8}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    if-ne v10, v11, :cond_18

    move v10, v3

    goto :goto_9

    :cond_18
    if-eqz v10, :cond_1a

    if-nez v11, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v10

    xor-int/2addr v10, v2

    goto :goto_9

    :cond_1a
    :goto_8
    move v10, v2

    :goto_9
    if-eqz v10, :cond_1b

    goto :goto_6

    :cond_1b
    iget-object v10, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iget-object v11, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_6

    :cond_1c
    invoke-virtual {v7}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v8

    if-ne v7, v8, :cond_1e

    :cond_1d
    move v7, v3

    goto :goto_e

    :cond_1e
    if-eqz v7, :cond_20

    if-nez v8, :cond_1f

    goto :goto_a

    :cond_1f
    array-length v10, v7

    array-length v11, v8

    if-eq v10, v11, :cond_21

    :cond_20
    :goto_a
    move v7, v2

    goto :goto_e

    :cond_21
    move v10, v3

    :goto_b
    array-length v11, v7

    if-ge v10, v11, :cond_1d

    aget-object v11, v7, v10

    aget-object v12, v8, v10

    invoke-virtual {v11}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_22

    goto :goto_a

    :cond_22
    invoke-virtual {v11}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v12}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v12

    if-ne v11, v12, :cond_23

    goto :goto_d

    :cond_23
    if-eqz v11, :cond_20

    if-nez v12, :cond_24

    goto :goto_a

    :cond_24
    array-length v13, v11

    array-length v14, v12

    if-eq v13, v14, :cond_25

    goto :goto_a

    :cond_25
    move v13, v3

    :goto_c
    array-length v14, v11

    if-ge v13, v14, :cond_27

    aget-object v14, v11, v13

    aget-object v15, v12, v13

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_26

    goto :goto_a

    :cond_26
    add-int/2addr v13, v2

    goto :goto_c

    :cond_27
    :goto_d
    add-int/2addr v10, v2

    goto :goto_b

    :goto_e
    if-eqz v7, :cond_28

    goto/16 :goto_6

    :cond_28
    add-int/2addr v6, v2

    goto/16 :goto_7

    :goto_f
    if-nez v0, :cond_2

    goto/16 :goto_0

    :goto_10
    xor-int/2addr v0, v2

    move-object/from16 v2, p0

    iget-object v5, v2, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    sget v6, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0442

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget v4, v5, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxNumActions:I

    iput v4, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    iget v4, v5, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    iput v4, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    iget v4, v5, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMinNumSystemGeneratedReplies:I

    iput v4, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    iget-object v7, v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-eqz v7, :cond_29

    iget-boolean v3, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    :cond_29
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    if-eqz v7, :cond_2a

    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v11, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v11, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v12, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;

    move-object v3, v12

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p3

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Z)V

    new-instance v3, Lkotlin/sequences/TransformingIndexedSequence;

    invoke-direct {v3, v11, v12}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    :goto_11
    move-object v11, v3

    goto :goto_12

    :cond_2a
    sget-object v3, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    goto :goto_11

    :goto_12
    iget-object v7, v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-eqz v7, :cond_2b

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;

    invoke-static {v4, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;

    move-object v3, v13

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p3

    move v8, v0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;ZLandroid/view/ContextThemeWrapper;)V

    new-instance v0, Lkotlin/sequences/TransformingIndexedSequence;

    invoke-direct {v0, v12, v13}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    :cond_2b
    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    :goto_13
    new-instance v1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    filled-new-array {v11, v0}, [Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;)V

    return-object v1
.end method
