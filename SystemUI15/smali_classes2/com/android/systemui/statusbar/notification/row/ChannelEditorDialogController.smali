.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

.field public appNotificationsEnabled:Z

.field public appUid:Ljava/lang/Integer;

.field public channel:Landroid/app/NotificationChannel;

.field public final channelGroupList:Ljava/util/List;

.field public final channelList:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

.field public final dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

.field public final edits:Ljava/util/Map;

.field public final groupNameLookup:Ljava/util/HashMap;

.field public final noMan:Landroid/app/INotificationManager;

.field public onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

.field public onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

.field public packageName:Ljava/lang/String;

.field public prepared:Z

.field public final wmFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelList:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    const/high16 p1, -0x7efc0000

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    return-void
.end method

.method public static synthetic getChannelList$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGroupNameLookup$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ChannelDialogController"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v4, v1, :cond_0

    :try_start_0
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v4, v5, v3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Unable to update notification importance"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v1, v3, p0, v0}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "Error calling NoMan"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final done()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final launchSettings(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channel:Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;->onClick(Landroid/app/NotificationChannel;I)V

    :cond_0
    return-void
.end method

.method public final prepareDialogForApp(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;)V
    .locals 1

    const-string v0, "ChannelDialogController"

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-interface {p2, p3, p5}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "Error calling NoMan"

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channel:Landroid/app/NotificationChannel;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    const/4 p3, 0x0

    :try_start_1
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-interface {p4, p5, p6}, Landroid/app/INotificationManager;->getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p4

    instance-of p5, p4, Ljava/util/List;

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    move-object p4, p3

    :goto_1
    if-nez p4, :cond_1

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p4

    const-string p5, "Error fetching channel groups"

    invoke-static {v0, p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    :goto_2
    check-cast p4, Ljava/util/Collection;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p5, p6, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channel:Landroid/app/NotificationChannel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p4, "miscellaneous"

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelList:Ljava/util/List;

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channel:Landroid/app/NotificationChannel;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelList:Ljava/util/List;

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    new-instance p5, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {p5, p4}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p4, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;

    invoke-static {p5, p4}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p4

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;

    invoke-direct {p5}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;-><init>()V

    new-instance p6, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {p6, p4, p5}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    new-instance p4, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$populateChannelList$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$populateChannelList$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-static {p6, p4}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p4

    invoke-static {p4}, Lkotlin/sequences/SequencesKt___SequencesKt;->distinct(Lkotlin/sequences/FilteringSequence;)Lkotlin/sequences/DistinctSequence;

    move-result-object p4

    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    iput-object p2, p4, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->context:Landroid/content/Context;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->context:Landroid/content/Context;

    if-nez p4, :cond_5

    move-object p4, p3

    :cond_5
    const p5, 0x7f140603

    invoke-direct {p2, p4, p5}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {p2, p4}, Landroid/view/Window;->requestFeature(I)Z

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-nez p2, :cond_7

    move-object p2, p3

    :cond_7
    const-string/jumbo p5, "\u00a0"

    invoke-virtual {p2, p5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    move-object p3, p2

    :goto_4
    const p2, 0x7f0d025b

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p3, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const p2, 0x7f0a04d1

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    if-eqz p2, :cond_9

    iput-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    iput-object p5, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelList:Ljava/util/List;

    iput-object p5, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateRows()V

    :cond_9
    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;

    invoke-direct {p5, p2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {p3, p5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const p2, 0x7f0a03af

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_a

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$4;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const p2, 0x7f0a0ade

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_b

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$5;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    invoke-virtual {p2, p1}, Landroid/view/Window;->addFlags(I)V

    const/16 p1, 0x7e1

    invoke-virtual {p2, p1}, Landroid/view/Window;->setType(I)V

    const p1, 0x1030056

    invoke-virtual {p2, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p3, -0x3

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string p3, "ChannelEditorDialogController"

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p3, 0x51

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p3

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p5

    not-int p5, p5

    and-int/2addr p3, p5

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p3, -0x1

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p3, -0x2

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_c
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepared:Z

    return-void
.end method
