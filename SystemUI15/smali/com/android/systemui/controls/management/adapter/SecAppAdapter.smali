.class public final Lcom/android/systemui/controls/management/adapter/SecAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final context:Landroid/content/Context;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final favoritesRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

.field public final isOOBE:Z

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public listOfServices:Ljava/util/List;

.field public final onAppSelected:Lkotlin/jvm/functions/Function1;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final switchCallback:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lcom/android/systemui/controls/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iput-object p8, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->context:Landroid/content/Context;

    iput-object p9, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p10, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p11, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    iput-object p12, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    iput-object p13, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->switchCallback:Lkotlin/jvm/functions/Function1;

    sget-object p5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    new-instance p5, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;

    invoke-direct {p5, p1, p0, p2}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/util/concurrent/Executor;)V

    invoke-interface {p4, p3, p5}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p8}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "ControlsOOBEManageAppsCompleted"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->isOOBE:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    and-int/lit8 v0, p14, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$1;->INSTANCE:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$1;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final access$updateAuthorizedPanels(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/lang/String;Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    check-cast p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->instantiateSharedPrefs(Landroid/os/UserHandle;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    const-string v2, "authorized_panels"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateAuthorizedPanels packageName = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isAlreadyAdd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecAppAdapter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->addAuthorizedPanels(Ljava/util/Set;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->instantiateSharedPrefs(Landroid/os/UserHandle;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object p2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    invoke-interface {p0, v2, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getTotalFavoriteAndActiveAppCount()I
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v4, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iget-object v6, v5, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v5, v5, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->getActiveFlag:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    check-cast p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    if-nez v1, :cond_2

    iget-object v5, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->resources:Landroid/content/res/Resources;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f110003

    invoke-virtual {v6, v8, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->resources:Landroid/content/res/Resources;

    const v6, 0x7f130464

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favorites:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favorites:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v6, v5}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-gtz v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v5

    iget-object v7, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->getActiveFlag:Lkotlin/jvm/functions/Function1;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bindData isPanelType = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecAppAdapter"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    iget-object v6, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    if-eqz v1, :cond_6

    iget-object v8, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->switchDivider:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v6, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07026c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->appInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2, v8, v2, v8}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v8, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favorites:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    if-nez v1, :cond_7

    iget-object v8, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v9, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, v4, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->setActiveFlag:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v7, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v4, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOffLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;

    invoke-direct {v7, p1, v1, v6, v0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;ZLcom/android/systemui/controls/management/adapter/SecAppAdapter;Lcom/android/systemui/controls/ControlsServiceInfo;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->badge:Landroid/view/View;

    iget-object v6, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    check-cast v6, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v7, v6, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v0, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favorites:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;ILcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p2, v3

    if-gt p0, p2, :cond_9

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0a0642

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d036e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->switchCallback:Lkotlin/jvm/functions/Function1;

    iget-boolean v5, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->isOOBE:Z

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;-><init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Landroid/view/View;Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    return-object p1
.end method
