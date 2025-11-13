.class Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilterOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/manageapplications/AppFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 2

    .line 2275
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090008

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    .line 2276
    sget v0, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2278
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 2279
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    return-void
.end method


# virtual methods
.method public disableFilter(I)V
    .locals 11

    .line 2329
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    .line 2330
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2333
    :cond_0
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    const-string v1, "ManageApplications"

    if-eqz v0, :cond_1

    .line 2334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 2335
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result v4

    .line 2334
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2338
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->updateFilterView(Z)V

    .line 2339
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 2340
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 2341
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    if-eqz v0, :cond_3

    .line 2343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Auto selecting filter "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    .line 2344
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2343
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilterSpinner(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2347
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4
    return-void
.end method

.method public enableFilter(I)V
    .locals 11

    .line 2295
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    .line 2296
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2299
    :cond_0
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    const-string v1, "ManageApplications"

    if-eqz v0, :cond_1

    .line 2300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2303
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 2304
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2306
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    if-le v2, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->updateFilterView(Z)V

    .line 2307
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 2308
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_4

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto selecting filter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 2311
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result p1

    .line 2310
    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilterSpinner(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2315
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2317
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_6

    .line 2318
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilterType(Lcom/android/settings/applications/manageapplications/ManageApplications;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    .line 2320
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 p1, -0x1

    if-eq v4, p1, :cond_6

    .line 2322
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilterSpinner(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2323
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_6
    return-void
.end method

.method public getCount()I
    .locals 0

    .line 2354
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getFilter(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    .line 2283
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-object p0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1

    .line 2359
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2262
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 2366
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 2367
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2368
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v0

    .line 2369
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 2382
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 2383
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2384
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2386
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2388
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    const p1, 0x1010036

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p2
.end method

.method public setFilterView()V
    .locals 0

    .line 2393
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateFilterView(Z)V
    .locals 1

    .line 2405
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2409
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mPinnedHeader:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2412
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mPinnedHeader:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
