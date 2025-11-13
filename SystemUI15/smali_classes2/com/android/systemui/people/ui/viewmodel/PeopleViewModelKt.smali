.class public abstract Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final PeopleViewModel$priorityTiles(Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)Ljava/util/List;
    .locals 2

    :try_start_0
    check-cast p0, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->priorityTiles()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/people/data/model/PeopleTileModel;

    invoke-static {v1, p1}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;->toViewModel(Lcom/android/systemui/people/data/model/PeopleTileModel;Landroid/content/Context;)Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleViewModel"

    const-string v0, "Couldn\'t retrieve priority conversations"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    return-object v0
.end method

.method public static final PeopleViewModel$recentTiles(Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)Ljava/util/List;
    .locals 2

    :try_start_0
    check-cast p0, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->recentTiles()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/people/data/model/PeopleTileModel;

    invoke-static {v1, p1}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;->toViewModel(Lcom/android/systemui/people/data/model/PeopleTileModel;Landroid/content/Context;)Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleViewModel"

    const-string v0, "Couldn\'t retrieve recent conversations"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    return-object v0
.end method

.method public static final toViewModel(Lcom/android/systemui/people/data/model/PeopleTileModel;Landroid/content/Context;)Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sget-object v1, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v3, v1

    iget-object v5, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    iget-object v6, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    iget v7, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    iget-boolean v8, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    iget-boolean v9, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    iget-boolean v4, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;-><init>(Lcom/android/systemui/people/widget/PeopleTileKey;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v1
.end method
