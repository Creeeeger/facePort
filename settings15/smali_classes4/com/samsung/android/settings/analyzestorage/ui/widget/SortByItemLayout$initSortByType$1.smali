.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->isValidClick$default(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "sort_type_unused_apps"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "sort_order_unused_apps"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->applySort(IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const p1, 0x7f0801d4

    goto :goto_0

    :cond_0
    const p1, 0x7f0801d8

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByOrder:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->isValidClick$default(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByOrder:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p1, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    const p1, 0x7f0f0027

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz p1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    iget-object v1, v0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    const v3, 0x7f0a0ea4

    if-nez p1, :cond_3

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v4, "sort_type_unused_apps"

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    const v4, 0x7f0a0ea7

    if-eq p1, v2, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const v3, 0x7f0a0ea9

    :cond_6
    :goto_2
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_3
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$dropListView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$dropListView$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;)V

    iput-object p1, v0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    goto :goto_4

    :cond_8
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
