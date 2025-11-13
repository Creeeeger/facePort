.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/print/ProfileSettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivePrintJobsCategory:Landroidx/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private mAddNewServicePreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mEmptyView:Landroid/view/View;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroidx/preference/PreferenceCategory;

.field private mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivePrintJobsCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddNewServicePreference(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrintServicesCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateAddNewServiceIntentOrNull(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smenablePrinterPluginService(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment;->enablePrinterPluginService(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 640
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->print_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 2

    .line 382
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "print_service_search_uri"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_1

    .line 390
    new-instance p0, Landroid/content/Intent;

    const-string v0, "market://search?q=print service plugin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p0

    .line 396
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static enablePrinterPluginService(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 1

    .line 634
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    const-string/jumbo v0, "print"

    .line 635
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrintManager;

    .line 636
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private newAddServicePreferenceOrNull()Lcom/samsung/android/settings/widget/SecRestrictedPreference;
    .locals 2

    .line 344
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 348
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 349
    sget v1, Lcom/android/settings/R$string;->print_menu_item_add_service:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 350
    sget v1, Lcom/android/settings/R$drawable;->sec_tw_list_icon_create_mtrl:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    const v1, 0x3ffffffe    # 1.9999998f

    .line 351
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v1, "print_add_plug_in"

    .line 353
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 354
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 356
    new-instance v1, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 3

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 408
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 128
    sget p0, Lcom/android/settings/R$string;->print_settings:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 144
    sget p0, Lcom/android/settings/R$string;->help_uri_printing:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 133
    const-class p0, Lcom/samsung/android/settings/connection/WirelessSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIntentActionString()Ljava/lang/String;
    .locals 0

    const-string p0, "android.settings.ACTION_PRINT_SETTINGS"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x50

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_connections"

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 419
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrintSettingsFragment"

    const-string v0, "Unable to start activity"

    .line 421
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    sget p1, Lcom/android/settings/R$xml;->print_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "print_jobs_category"

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "print_services_category"

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroidx/preference/PreferenceCategory;

    .line 172
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 175
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 180
    :cond_0
    new-instance p1, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController-IA;)V

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 183
    new-instance p1, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController-IA;)V

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected onDataSetChanged()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->empty_print_state:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    .line 203
    sget v0, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/android/settings/R$string;->print_no_services_installed:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 208
    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->add_new_service:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    .line 209
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    :cond_0
    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 216
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget v0, Lcom/android/settings/R$string;->print_install_print_services_dialog_message_1:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 220
    :cond_1
    sget v0, Lcom/android/settings/R$string;->print_install_print_services_dialog_message_2:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 222
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_2
    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 230
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 234
    new-instance v0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0, p2}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 236
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
