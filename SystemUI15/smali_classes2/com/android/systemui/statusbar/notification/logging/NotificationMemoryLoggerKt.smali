.class public abstract Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$toKb(I)I
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static final aggregateMemoryUsageData(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;",
            ">;)",
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;",
            ">;"
        }
    .end annotation

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;-><init>(Ljava/lang/Iterable;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    check-cast v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    check-cast v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    move-object v7, v3

    check-cast v7, Lkotlin/Pair;

    if-eqz v6, :cond_1

    new-instance v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget v7, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    invoke-direct {v4, v6, v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;-><init>(II)V

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_2

    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    :cond_2
    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    add-int/2addr v6, v8

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    if-lez v8, :cond_3

    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    :cond_3
    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    add-int/2addr v6, v8

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    if-lez v8, :cond_4

    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    :cond_4
    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    add-int/2addr v6, v8

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    if-lez v8, :cond_5

    iget v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    :cond_5
    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    iget v6, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    iget v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    iget v6, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    sget-object v7, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    if-ne v6, v7, :cond_6

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    if-eqz v5, :cond_8

    iget v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    iget v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    add-int/2addr v2, v6

    iput v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    iget v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    iget v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    add-int/2addr v2, v6

    iput v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    iget v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    iget v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    add-int/2addr v2, v6

    iput v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    iget v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    iget v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    add-int/2addr v2, v6

    iput v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    iget v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    iget v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    add-int/2addr v2, v6

    iput v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    iget v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    iget v5, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    add-int/2addr v2, v5

    iput v2, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    :cond_8
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method
