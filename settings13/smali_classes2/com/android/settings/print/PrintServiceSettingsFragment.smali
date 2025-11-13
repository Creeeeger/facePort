.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mSearchView:Landroid/widget/SearchView;

.field private mServiceEnabled:Z

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public static synthetic $r8$lambda$5_XdFtimDVo_jlFi8EV_IweaF2s(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/widget/Switch;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->lambda$initComponents$0(Landroid/widget/Switch;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUnfilteredItemCount(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrintersAdapter(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastUnfilteredItemCount(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initComponents()V
    .locals 2

    .line 248
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter-IA;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 249
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 253
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 259
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 267
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic lambda$initComponents$0(Landroid/widget/Switch;Z)Z
    .locals 0

    .line 263
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 186
    invoke-virtual {p1, p0, p2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private updateEmptyView()V
    .locals 5

    .line 190
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v4

    :cond_0
    if-nez v1, :cond_6

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->empty_print_state:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 200
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    sget v3, Lcom/android/settings/R$string;->print_service_disabled:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v2

    if-gtz v2, :cond_3

    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v4

    :cond_2
    if-nez v1, :cond_6

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->empty_printers_list_service_enabled:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_5

    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v4

    :cond_4
    if-nez v1, :cond_6

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->empty_print_state:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 224
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    sget v3, Lcom/android/settings/R$string;->print_no_printers_found:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 229
    :cond_5
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getItemCount()I

    move-result p0

    if-lez p0, :cond_6

    if-eqz v1, :cond_6

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private updateUiForArguments()V
    .locals 3

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_SERVICE_COMPONENT_NAME"

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 287
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    const-string v1, "EXTRA_CHECKED"

    .line 290
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private updateUiForServiceState()V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    .line 244
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 299
    new-instance p1, Lcom/android/settings/print/SettingsPrintServicesLoader;

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "print"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x3

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 384
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 385
    sget v0, Lcom/android/settings/R$menu;->print_service_settings:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 387
    sget p2, Lcom/android/settings/R$id;->print_menu_item_add_printer:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 391
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 394
    :goto_0
    sget p2, Lcom/android/settings/R$id;->print_menu_item_settings:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 395
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 396
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 398
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 401
    :goto_1
    sget p2, Lcom/android/settings/R$id;->print_menu_item_search:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 402
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 403
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz p1, :cond_3

    .line 405
    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 417
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$4;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_2

    .line 438
    :cond_2
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 144
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Lcom/android/settings/R$attr;->roundedCornerColor:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 146
    sget p3, Lcom/android/settings/R$color;->white:I

    .line 147
    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    :cond_0
    const/16 p2, 0xf

    .line 150
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "EXTRA_CHECKED"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 310
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 312
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/printservice/PrintServiceInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_2

    .line 322
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 334
    :cond_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 336
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    if-eqz v1, :cond_3

    .line 337
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v3, Landroid/content/ComponentName;

    .line 340
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 345
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 347
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_4

    .line 348
    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_2

    .line 352
    :cond_3
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 355
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 356
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v1, Landroid/content/ComponentName;

    .line 359
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 364
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 366
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean p2, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p2, :cond_6

    .line 367
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    goto :goto_3

    .line 371
    :cond_5
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 374
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 275
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method
