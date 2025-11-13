.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-void
.end method

.method public static toKb(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "--"

    return-object p0

    :cond_0
    int-to-float p0, p0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2f KB"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p1

    sget-object v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    new-instance v3, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v3, v1, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$1;

    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$2;

    filled-new-array {v2, v3}, [Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    const-string v10, "Custom View"

    const-string v11, "Key"

    const-string v2, "Package"

    const-string v3, "Small Icon"

    const-string v4, "Large Icon"

    const-string v5, "Style"

    const-string v6, "Style Icon"

    const-string v7, "Big Picture"

    const-string v8, "Extender"

    const-string v9, "Extras"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v8, 0x2502

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget v11, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v11

    iget v12, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, -0x3e8

    iget v14, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    if-eq v14, v13, :cond_0

    packed-switch v14, :pswitch_data_0

    const-string v13, "Unknown"

    goto :goto_1

    :pswitch_0
    const-string v13, "RankerGroup"

    goto :goto_1

    :pswitch_1
    const-string v13, "Messaging"

    goto :goto_1

    :pswitch_2
    const-string v13, "Media"

    goto :goto_1

    :pswitch_3
    const-string v13, "Inbox"

    goto :goto_1

    :pswitch_4
    const-string v13, "DCustomView"

    goto :goto_1

    :pswitch_5
    const-string v13, "Call"

    goto :goto_1

    :pswitch_6
    const-string v13, "BigText"

    goto :goto_1

    :pswitch_7
    const-string v13, "BigPicture"

    goto :goto_1

    :pswitch_8
    const-string v13, "None"

    goto :goto_1

    :cond_0
    const-string v13, "Unspecified"

    :goto_1
    iget v14, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v14

    iget v15, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v15

    iget v4, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v4

    iget v7, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v16

    iget-boolean v7, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    const/16 v7, 0x7c

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v4

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto/16 :goto_0

    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;

    const/16 v16, 0x3f

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    add-int/2addr v7, v9

    iput v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    add-int/2addr v7, v9

    iput v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    add-int/2addr v7, v9

    iput v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    add-int/2addr v7, v9

    iput v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    add-int/2addr v7, v9

    iput v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    iget v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    iget v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    add-int/2addr v7, v6

    iput v7, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    goto :goto_2

    :cond_2
    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v10

    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v11

    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v13

    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v14

    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v15

    iget v4, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    const-string v18, ""

    const-string v9, "TOTALS"

    const-string v12, ""

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/dump/DumpsysTableLogger;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Notification Object Usage"

    invoke-direct {v5, v4, v2, v3}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v0}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    const-string v15, "Software Bitmaps"

    const-string v16, "Key"

    const-string v9, "Package"

    const-string v10, "View Type"

    const-string v11, "Small Icon"

    const-string v12, "Large Icon"

    const-string v13, "Style Use"

    const-string v14, "Custom View"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v13

    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v14

    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v15

    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v16

    iget v9, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v17

    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    const/16 v10, 0x7c

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    iget-object v11, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const/16 v10, 0x7c

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_4

    :cond_6
    new-instance v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    sget-object v9, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    if-ne v8, v9, :cond_9

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    check-cast v7, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    iget v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->smallIcon:I

    iget v7, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->smallIcon:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->largeIcon:I

    iget v7, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->largeIcon:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->style:I

    iget v7, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->style:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->customViews:I

    iget v7, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->customViews:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->softwareBitmapsPenalty:I

    iget v5, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    add-int/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->softwareBitmapsPenalty:I

    goto :goto_9

    :cond_c
    iget v1, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->smallIcon:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v7

    iget v1, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->largeIcon:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v8

    iget v1, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->style:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v9

    iget v1, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->customViews:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v10

    iget v1, v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationViewUsage$Totals;->softwareBitmapsPenalty:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    move-result-object v11

    const-string v6, ""

    const-string v12, ""

    const-string v5, "TOTALS"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/dump/DumpsysTableLogger;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    const-string v4, "Notification View Usage"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
