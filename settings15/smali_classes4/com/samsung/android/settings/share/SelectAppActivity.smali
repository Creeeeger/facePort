.class public Lcom/samsung/android/settings/share/SelectAppActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

.field public mDBOriginalList:Ljava/util/List;

.field public mInitialListPair:Landroid/util/Pair;

.field public mIsPortrait:Ljava/lang/Boolean;

.field public mIsSearchEnabled:Z

.field public mMenuLandscape:Landroid/view/Menu;

.field public mOptionsMenu:Landroid/view/Menu;

.field public mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field public mPortraitMenuViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mSelectAllCheckBox:Landroid/widget/CheckBox;

.field public mSelectAllView:Landroid/view/View;

.field public mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

.field public mSelectNoApp:Landroid/widget/TextView;

.field public mSourcesIntentList:Ljava/util/List;

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;

.field public mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final doRevert()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->doRevert()V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateEditMenuVisibility$1()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSourcesIntentList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "share_SelectApp"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    const-string v1, "extra_app_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/share/common/ShareUtil;->parseJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getShareComponentsFromIntent() is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "extra_caller_target_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "extra_caller_resolveinfo_list"

    const-class v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "INTENT_EXTRA_CALLER_RESOLVE_INFO_LIST is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2}, Lcom/samsung/android/settings/share/common/ShareUtil;->parseJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/Optional;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getCallerComponentsFromIntent() is. "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->open()V

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->getAllRankedLabelComponents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->close()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, v4}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/settings/share/structure/DBShareComponent;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v5

    const-string/jumbo v6, "store"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "factory"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    invoke-direct {v6, v3, v4, v5}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class v3, Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/share/SelectAppViewModel;

    iput-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v3, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iput-object p1, v1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    const-string v2, "instance_key_favorites"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    const-string v3, "instance_key_others"

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    const-string v2, "instance_key_initial_favorites"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "instance_key_initial_others"

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iput-object v1, v2, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v2, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    const-string v2, "instance_key_modified"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSourcesIntentList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/share/structure/CallerComponent;

    iget-object v5, p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItemPackageName:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/settings/share/SelectAppViewModel;->makeAppData(Lcom/samsung/android/settings/share/structure/ShareComponent;Landroid/content/Context;)Landroidx/picker/model/AppInfoDataImpl;

    move-result-object v2

    iput-boolean v3, v2, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    iput-boolean v3, v2, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    iget-object v3, p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    const p1, 0x7f0d09ac

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0e2e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectNoApp:Landroid/widget/TextView;

    const p1, 0x7f0a106c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0606b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$1;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const p1, 0x7f0a0590

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a058f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {p1, v1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    const p1, 0x7f0a0d9d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->enableSelectedAppPickerView(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$3;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    iput-object v0, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    const p1, 0x7f0a0d9b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectAllView:Landroid/view/View;

    const p1, 0x7f0a0d98

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateSelectAllCheckBox()V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectAllView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateSelectCount$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142743

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142744

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_7

    move v4, v3

    :cond_7
    iput-boolean v4, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsMainViewTitleCustomized:Z

    iget-object v1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    move-object v2, v0

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f142f2a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    new-instance v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/share/structure/ShareComponent;

    iget-object v5, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItemPackageName:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/settings/share/SelectAppViewModel;->makeAppData(Lcom/samsung/android/settings/share/structure/ShareComponent;Landroid/content/Context;)Landroidx/picker/model/AppInfoDataImpl;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iget-object v2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/share/structure/ShareComponent;

    iget-object v5, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItemPackageName:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/settings/share/SelectAppViewModel;->makeAppData(Lcom/samsung/android/settings/share/structure/ShareComponent;Landroid/content/Context;)Landroidx/picker/model/AppInfoDataImpl;

    move-result-object v4

    iput-boolean v3, v4, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    iget-object v5, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOptionsMenu:Landroid/view/Menu;

    const v0, 0x7f0a095d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06067c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMenuLandscape:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateEditMenuVisibility$1()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a095d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-boolean v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsSearchEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectNoApp:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$3;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$5;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->selectEditMenuItem$1(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v2, "instance_key_favorites"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    new-array v2, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v2, "instance_key_others"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-array v2, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v2, "instance_key_initial_favorites"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-array v1, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "instance_key_initial_others"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "instance_key_modified"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final selectEditMenuItem$1(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0079

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object p1, p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v3, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;)V

    iget-object p1, v0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :goto_4
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0074

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->doRevert()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_5
    return v3
.end method

.method public final updateEditMenuVisibility$1()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const v1, 0x7f0a0079

    const v2, 0x7f0a0074

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuViewWrapper:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMenuLandscape:Landroid/view/Menu;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMenuLandscape:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMenuLandscape:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMenuLandscape:Landroid/view/Menu;

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public final updateSelectAllCheckBox()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-boolean v1, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mIsAllChecked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public final updateSelectCount$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140d3e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f140d3c

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
