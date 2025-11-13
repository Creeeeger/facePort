.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$dropListView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$dropListView$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v1, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$dropListView$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0a0ea4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0ea7

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0ea9

    if-ne p1, v1, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v1, "sort_order_unused_apps"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "sort_type_unused_apps"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->applySort(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->updateSortByText()V

    goto :goto_1

    :cond_3
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
