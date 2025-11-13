.class public final Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/people/data/repository/PeopleTileRepository;


# instance fields
.field public final peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    return-void
.end method

.method public static toModel(Landroid/app/people/PeopleSpaceTile;)Lcom/android/systemui/people/data/model/PeopleTileModel;
    .locals 8

    new-instance v7, Lcom/android/systemui/people/data/model/PeopleTileModel;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v5

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/people/data/model/PeopleTileModel;-><init>(Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Landroid/graphics/drawable/Icon;ZZZ)V

    return-object v7
.end method


# virtual methods
.method public final priorityTiles()Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v2, p0, v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Landroid/os/UserManager;Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

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

    check-cast v1, Landroid/app/people/PeopleSpaceTile;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->toModel(Landroid/app/people/PeopleSpaceTile;)Lcom/android/systemui/people/data/model/PeopleTileModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final recentTiles()Ljava/util/List;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    invoke-interface {v1}, Landroid/app/people/IPeopleManager;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v2, p0, v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Landroid/os/UserManager;Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

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

    check-cast v1, Landroid/app/people/PeopleSpaceTile;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->toModel(Landroid/app/people/PeopleSpaceTile;)Lcom/android/systemui/people/data/model/PeopleTileModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
