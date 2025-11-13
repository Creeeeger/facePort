.class public abstract Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecDynamicFragment.java"


# instance fields
.field private final mDBFromExternalObserver:Landroid/database/ContentObserver;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mDynamicKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalDBUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuObserver:Landroid/database/ContentObserver;

.field private final mPreferenceKeySettingsDbPMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

.field private final mSettingsDbPreferenceKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5HhpBMsiLsI-Jletn-jMxE6fv6E(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindIcon$4(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YamgA1V1n_zV_p92W5LgsFFZBE(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindIcon$5(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dnEfglE8ifYrHel11usRLFY8bbU(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindPreferenceToTile$0(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e-V4_K-WlZiytFHKijf_0QCGh-0(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindSummary$3(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiNrS0cyWTR5yThFtw8L7zsdf-8(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindPreferenceToTile$1(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tSVO_b6EHPQAVel0iIW9_ALKKes(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindSummary$2(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSecDynamicMenuFeatureProvider(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsDbPreferenceKeyMap(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSettingsDbPreferenceKeyMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriList(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDynamicKeyList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mExternalDBUriList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSettingsDbPreferenceKeyMap:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mPreferenceKeySettingsDbPMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDBFromExternalObserver:Landroid/database/ContentObserver;

    .line 130
    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mMenuObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2

    .line 600
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000d

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 609
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->setPreferenceIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    .line 612
    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 639
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 643
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->setPreferenceIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private bindPreferenceToTile(Landroid/app/Activity;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindPreferenceToTile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDynamicFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p2, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 492
    instance-of v0, p2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    :cond_0
    instance-of v0, p2, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_5

    .line 497
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 499
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->bindSummary(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    .line 501
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    .line 503
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_1
    instance-of v0, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_2

    instance-of v1, p2, Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_3

    :cond_2
    instance-of v1, p2, Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v1, :cond_4

    .line 512
    :cond_3
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 513
    new-instance v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 519
    new-instance p1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 534
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, v0, p4}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->updateSwitchMenuFromSettingsDB(Landroid/os/Bundle;Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;)V

    .line 539
    :cond_5
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p0

    if-eqz p0, :cond_7

    const p1, 0x7fffffff

    if-ne p5, p1, :cond_6

    .line 543
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_6
    add-int/2addr p0, p5

    .line 545
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private bindSummary(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 583
    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 595
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private changeSwitchMenuFromSettingsDB(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Boolean;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mPreferenceKeySettingsDbPMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$bindIcon$4(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->setPreferenceIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private synthetic lambda$bindIcon$5(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .locals 4

    .line 613
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 620
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "com.android.settings.icon_uri"

    const-string v3, "getProviderIcon"

    .line 621
    invoke-static {p1, v2, v3}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 624
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 623
    invoke-static {v2, v0, p1, v1}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    .line 626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get icon from uri "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDynamicFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 629
    :cond_2
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 630
    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$bindPreferenceToTile$0(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)Z
    .locals 0

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$bindPreferenceToTile$1(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_0
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 525
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1000"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    .line 524
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCheckedChanged(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 528
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$bindSummary$2(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 591
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$bindSummary$3(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .locals 2

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 587
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 590
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "com.android.settings.summary"

    .line 589
    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 591
    new-instance p1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda5;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onCheckedChanged(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 3

    .line 233
    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 235
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 238
    new-instance v2, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    invoke-direct {v2}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;-><init>()V

    .line 239
    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setChecked(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->build()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->updatePreferenceData(Landroid/net/Uri;Lcom/samsung/android/settings/external/DynamicMenuData;)V

    .line 244
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->changeSwitchMenuFromSettingsDB(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method private refreshSwitchMenuFromSettingsDB(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;)V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    move v0, p2

    .line 411
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private setPreferenceIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 647
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 648
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateMenuFromProvider()V
    .locals 10

    const-string v0, "SecDynamicFragment#updateMenuFromProvider"

    .line 416
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "SecDynamicFragment"

    if-nez v1, :cond_0

    const-string v1, "provider is null"

    .line 420
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecDynamicFragment#updateMenuFromProvider_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 427
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-interface {v3, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getBundleListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "list is null"

    .line 429
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/external/DynamicMenuData;

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DynamicMenuData key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,summary : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,isCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,isEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,isVisible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 440
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v7

    .line 442
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getEnabled()Z

    move-result v8

    .line 443
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result v9

    .line 444
    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData;->getColorPrimaryDark()Z

    move-result v3

    .line 446
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v3, "pref is null"

    .line 448
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 452
    :cond_2
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {v4, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 455
    invoke-virtual {v4, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 457
    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_3

    .line 458
    move-object v5, v4

    check-cast v5, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v5, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 461
    :cond_3
    invoke-static {v4, v3}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v3, "updateMenuFromProvider() Exception"

    .line 464
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto/16 :goto_0

    .line 472
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private updateSwitchMenuFromSettingsDB(Landroid/os/Bundle;Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;)V
    .locals 4

    const-string v0, "com.samsung.android.settings.settingssystemdbkey"

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecDynamicFragment"

    if-nez p1, :cond_0

    const-string p0, "dbKey is null"

    .line 382
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 386
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read META_DATA_KEY_PREFERENCE_SETTINGS_SYSTEM_DB_KEY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mExternalDBUriList:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSettingsDbPreferenceKeyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingsDbPreferenceKeyMap put : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mPreferenceKeySettingsDbPMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mreferenceKeySettingsDbPMap put : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p3, 0x1

    .line 397
    :cond_1
    invoke-virtual {p2, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 2

    .line 362
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.android.settings.PREFERENCE_TYPE"

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, -0x1

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PreferenceCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "SecInsetCategoryPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "SwitchPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "SwitchPreferenceScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 374
    new-instance p1, Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 368
    :pswitch_0
    new-instance p1, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 366
    :pswitch_1
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 370
    :pswitch_2
    new-instance p1, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 372
    :pswitch_3
    new-instance p1, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25fad89b -> :sswitch_3
        0x350a234f -> :sswitch_2
        0x4bc10d05 -> :sswitch_1
        0x79ac8f19 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDynamicCategoryKey()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method protected launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 555
    :cond_0
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    .line 557
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "from_settings"

    const/4 v1, 0x1

    .line 558
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "launch_from"

    const-string v2, "settings"

    .line 559
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    :try_start_0
    invoke-static {p1, p0}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    iget-object p2, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 561
    invoke-virtual {p1, p0, v0, p2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 565
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 176
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 178
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    return-void
.end method

.method public onCategoriesChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SecDynamicFragment"

    const-string v1, "onCategoriesChanged"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCategoriesChanged(Ljava/util/Set;)V

    .line 252
    new-instance p1, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshDynamicMenus(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "updateMenuFromProvider called to onCategoriesChanged()."

    .line 256
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->updateMenuFromProvider()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshDynamicMenus(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDBFromExternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 189
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Failed to register for: "

    const/4 v3, 0x1

    const-string v4, "SecDynamicFragment"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v1, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mExternalDBUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 204
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDBFromExternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v1, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 208
    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSettingsDbPreferenceKeyMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 210
    instance-of v7, v6, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v7, :cond_2

    .line 211
    check-cast v6, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshSwitchMenuFromSettingsDB(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const-string v0, "updateMenuFromProvider called to onResume()."

    .line 220
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->updateMenuFromProvider()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->addCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->removeCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    :cond_0
    return-void
.end method

.method refreshDynamicMenus(Ljava/lang/String;)V
    .locals 13

    const-string v0, "SecDynamicFragment#refreshDynamicMenus"

    .line 274
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDynamicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDynamicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDynamicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getDynamicCategoryKey()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 290
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 295
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "SecDynamicFragment"

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    iget-object v5, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 297
    invoke-interface {v5, v3}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v5

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Category Key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_3

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO dashboard tiles for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "tile list is empty, skipping category "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v5, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 314
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v5, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v5, v9}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile does not contain a key, skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0, v9}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    .line 328
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_8

    .line 330
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;

    move-result-object v12

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const v11, 0x7fffffff

    move-object v6, p0

    move-object v8, v12

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->bindPreferenceToTile(Landroid/app/Activity;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 332
    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 336
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDynamicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 337
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDynamicKeyList.add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDynamicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 346
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 350
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 351
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 356
    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
