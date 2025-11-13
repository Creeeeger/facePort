.class Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;
.super Landroid/os/AsyncTask;
.source "LabsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/LabsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatePreferenceNewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 200
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const-string p1, "LabsSettings"

    const-string v0, "Collecting apps..."

    .line 202
    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installedApps.size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.intent.action.SEC_LABS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$mresolveIntent(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 216
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "Finish getting ApplicationInfo"

    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    const-string v3, "labs_apps_picker"

    invoke-virtual {v0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->labs_app_picker_view:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fputmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmIsFirstLoading(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fputmIsFirstLoading(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Z)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/apppickerview/widget/AppPickerView;->resetPackages(Ljava/util/List;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayed items"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LabsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    const-string v0, "category_labs_app_picker"

    invoke-virtual {p1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fputmIsRunAsyncTask(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Z)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 245
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fputmIsRunAsyncTask(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Z)V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
