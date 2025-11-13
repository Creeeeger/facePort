.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;
.super Landroid/os/AsyncTask;
.source "FrontScreenAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
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
.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
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

    .line 497
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 498
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 501
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 493
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->onPostExecute(Ljava/util/List;)V

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

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$misFragmentVisible(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v1

    .line 506
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 510
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetisPreviewVisible(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    sget v2, Lcom/android/settings/R$xml;->sec_front_screen_apps:I

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputisPreviewVisible(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->front_screen_apps_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    const-string v2, "front_screen_apps_preview"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmPreview(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Lcom/android/settingslib/widget/LayoutPreference;)V

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPreview(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPreview(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->image_view_container:I

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmImageLayout(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Landroid/widget/LinearLayout;)V

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    const-string v2, "front_screen_apps_picker"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->front_screen_app_picker_view:I

    .line 527
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmIsFirstLoading(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 533
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmIsFirstLoading(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->resetPackages(Ljava/util/List;)V

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayed items"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrontScreenAppsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 543
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 545
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
