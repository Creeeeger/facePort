.class public final Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mMouseButtonType:I

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v5}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionDBKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "launcherapps"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    new-instance v11, Landroidx/picker/model/AppData$ListAppDataBuilder;

    sget-object v12, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v10, v7, v8}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v8

    invoke-direct {v11, v8}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v5, v1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v5

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroidx/picker/model/AppInfoData;->setDimmed(Z)V

    :cond_2
    const-string v8, ":"

    invoke-static {v7, v8, v9}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/model/AppInfoData;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AlphaComparator;

    invoke-direct {v3}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AlphaComparator;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v2, v0}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d07f1

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object v2, v2, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v2, v0}, Landroidx/picker/widget/SeslAppPickerView;->addFooter(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d07ee

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object v2, v2, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v2, v0, v1}, Landroidx/picker/widget/SeslAppPickerView;->addHeader(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
