.class final Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintServicesController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
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

    .line 251
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    .line 252
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    if-eqz p1, :cond_0

    .line 254
    new-instance p2, Lcom/android/settings/print/SettingsPrintServicesLoader;

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x3

    invoke-direct {p2, p1, p0, v0}, Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 8
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

    .line 264
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmPrintServicesCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 266
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmAddNewServicePreference(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmAddNewServicePreference(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "print_services_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmPrintServicesCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 273
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "print_add_plug_in"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmAddNewServicePreference(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 274
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmAddNewServicePreference(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmPrintServicesCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 279
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$000(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "PrintSettingsFragment"

    const-string p1, "No preference context, skip adding print services"

    .line 282
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 287
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/printservice/PrintServiceInfo;

    .line 288
    new-instance v2, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-direct {v2, v0}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 294
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 295
    new-instance v5, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;

    invoke-direct {v5, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;)V

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    const-class v5, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 304
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/4 v6, 0x1

    .line 305
    invoke-virtual {v2, v6}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 307
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 308
    invoke-virtual {v2, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 309
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    sget v6, Lcom/android/settings/R$string;->print_feature_state_on:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 312
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    sget v6, Lcom/android/settings/R$string;->print_feature_state_off:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    :goto_1
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 318
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 319
    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_5
    invoke-virtual {v2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 327
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    const-string v6, "EXTRA_CHECKED"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "EXTRA_TITLE"

    .line 328
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmPrintServicesCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
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

    .line 338
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$fgetmPrintServicesCategory(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
