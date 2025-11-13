.class public Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# instance fields
.field private final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field protected final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNeedToReplaceSeparator:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$3t80s4_NiIBiFZM-o_J3U41peK0(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindSwitchAndGetObserver$6(Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BlBTuk-YObuoeGVHyLwGiuUwlng(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$12(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ff2f0dZCOxawjz1CTycrLLgAxTU(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSummary$4(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ql1GN___r65c3HBaWsvLnaOoXqc(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSummary$5(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RJ1Daew3GlVao5tD6LjQagpDkXI(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSwitch$10(Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlAaVlS0SRGY22A3mHvMS_-Ed0I(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshTitle$2(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5cZkz34y53OD-DzqD1ypGHhUQE(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSummary$3(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHFuscG_1mqp8RKOhTIYzXTBtdk(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$11(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$erIdsR4eFMFAmcwa1rJUvyaF3ow(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$onCheckedChanged$7(Landroidx/preference/Preference;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$g7vxsOtKXmuIM2W6TAXGct8c9n8(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$onCheckedChanged$8(Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfEuzEM-Kfj3pOyS801A3iSre90(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshTitle$1(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMzmNzOvOhgxJaD3gCzQRSzGxts(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindPreferenceToTileAndGetObservers$0(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wk7V0dV2mY9rHDvBIjqMixdUPmA(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSwitch$9(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSummary(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->refreshSummary(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSwitch(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->refreshSwitch(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshTitle(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->refreshTitle(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mNeedToReplaceSeparator:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    .line 113
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private bindBadgeIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    .line 657
    iget p0, p2, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    if-lez p0, :cond_0

    .line 658
    sget p0, Lcom/android/settings/R$layout;->sec_badge_icon_widget:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 660
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 662
    :goto_0
    iget p0, p2, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    iput p0, p2, Lcom/android/settingslib/drawer/Tile;->displayBadgeCnt:I

    return-void
.end method

.method private bindSummaryAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-boolean p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mNeedToReplaceSeparator:Z

    if-eqz p2, :cond_0

    .line 343
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->replaceSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const-string v0, "getDynamicSummary"

    .line 354
    invoke-static {p2, v1, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 356
    invoke-direct {p0, v0, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private bindSwitchAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;I)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 3

    .line 387
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->hasSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.settings.switch_uri"

    const-string/jumbo v1, "onCheckedChanged"

    .line 391
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    new-instance v2, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p3, v1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p3, "isChecked"

    .line 405
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    .line 408
    invoke-direct {p0, p3, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object p0

    return-object p0
.end method

.method private bindTitleAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1

    .line 311
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.android.settings.title_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v0, "getDynamicTitle"

    .line 317
    invoke-static {p2, v2, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 319
    invoke-direct {p0, v0, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 1

    .line 282
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V

    return-object v0
.end method

.method private getResolvableUsers(Landroid/content/Intent;Lcom/android/settingslib/drawer/Tile;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/settingslib/drawer/Tile;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    iget-object p2, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 648
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 649
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 1

    .line 642
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic lambda$bindIcon$11(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V
    .locals 6

    .line 491
    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private synthetic lambda$bindIcon$12(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V
    .locals 11

    .line 473
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 480
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "com.android.settings.icon_uri"

    const-string v3, "getProviderIcon"

    .line 481
    invoke-static {p1, v2, v3}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 483
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v9

    if-nez v9, :cond_2

    .line 486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to get icon from uri "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_2
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 490
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda2;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$bindPreferenceToTileAndGetObservers$0(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 8

    .line 231
    instance-of v0, p1, Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 234
    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 235
    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    check-cast p1, Lcom/android/settings/homepage/TopLevelSettings;

    .line 240
    invoke-virtual {p1}, Lcom/android/settings/homepage/TopLevelSettings;->getHighlightMixin()Lcom/android/settings/homepage/TopLevelHighlightMixin;

    move-result-object v0

    .line 241
    invoke-virtual {p1, p7}, Lcom/android/settings/homepage/TopLevelSettings;->isDuplicateClick(Landroidx/preference/Preference;)Z

    move-result p7

    .line 242
    invoke-virtual {p1, p2}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 p7, 0x0

    :goto_0
    move v7, p7

    move-object v6, v0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 244
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILcom/android/settings/homepage/TopLevelHighlightMixin;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$bindSwitchAndGetObserver$6(Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "1000"

    goto :goto_0

    :cond_1
    const-string p2, "0"

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p3, p4, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->onCheckedChanged(Landroid/net/Uri;Landroidx/preference/Preference;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCheckedChanged$7(Landroidx/preference/Preference;Landroid/os/Bundle;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    const-string/jumbo v1, "set_checked_error"

    .line 420
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    xor-int/2addr p3, v0

    .line 425
    invoke-direct {p0, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchChecked(Landroidx/preference/Preference;Z)V

    const-string/jumbo p1, "set_checked_error_message"

    .line 426
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 428
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCheckedChanged$8(Landroid/net/Uri;ZLandroidx/preference/Preference;)V
    .locals 3

    .line 414
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "checked_state"

    invoke-static {v1, p1, v0, v2, p2}, Lcom/android/settingslib/drawer/TileUtils;->putBooleanToUriAndGetResult(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 418
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Landroid/os/Bundle;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$refreshSummary$3(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 372
    invoke-direct {p0, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->replaceSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$refreshSummary$4(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshSummary$5(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 3

    .line 363
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.summary"

    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mNeedToReplaceSeparator:Z

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 374
    :cond_0
    new-instance p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda10;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda10;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$refreshSwitch$10(Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V
    .locals 3

    .line 436
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "checked_state"

    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->getBooleanFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    .line 439
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Z)V

    invoke-virtual {p2, v0}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$refreshSwitch$9(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchChecked(Landroidx/preference/Preference;Z)V

    const/4 p2, 0x1

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private static synthetic lambda$refreshTitle$1(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshTitle$2(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 326
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 327
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings.title"

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 330
    new-instance p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda12;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private launchIntentOrSelectProfile(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILcom/android/settings/homepage/TopLevelHighlightMixin;Z)V
    .locals 7

    .line 537
    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot resolve intent, skipping. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_1
    invoke-static {p4, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 554
    :cond_2
    instance-of v0, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_3

    const v0, 0xffff

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    .line 556
    instance-of v4, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 557
    invoke-virtual {p2, v5}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 558
    invoke-static {p1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .line 562
    :cond_5
    iget-object v5, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz v5, :cond_11

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->isPrimaryProfileOnly()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_3

    .line 574
    :cond_6
    iget-object v5, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    if-nez p6, :cond_13

    .line 576
    iget-object p5, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p5, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    if-eqz v4, :cond_7

    .line 579
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 580
    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 581
    move-object p0, p1

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 583
    :cond_7
    iget-object p0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 584
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    .line 583
    invoke-virtual {p1, p3, v0, v3, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v5, "persist.sys.knox.device_owner"

    .line 588
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez p6, :cond_13

    .line 590
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p2, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    .line 594
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p3}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    .line 593
    :goto_2
    invoke-virtual {p1, p3, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_a
    const-string v1, "android.intent.extra.USER"

    .line 599
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    if-eqz v1, :cond_d

    .line 600
    iget-object v5, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez p6, :cond_c

    .line 602
    iget-object p5, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p5, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    if-eqz v4, :cond_b

    .line 605
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 606
    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 607
    move-object p0, p1

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 609
    :cond_b
    invoke-virtual {p1, p3, v0, v3, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_c
    return-void

    .line 615
    :cond_d
    invoke-direct {p0, p3, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getResolvableUsers(Landroid/content/Intent;Lcom/android/settingslib/drawer/Tile;)Ljava/util/List;

    move-result-object v1

    .line 616
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_10

    if-nez p6, :cond_f

    .line 618
    iget-object p5, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p5, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    if-eqz v4, :cond_e

    .line 621
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 622
    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 623
    move-object p0, p1

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 626
    :cond_e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    .line 625
    invoke-virtual {p1, p3, v0, v3, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_f
    return-void

    .line 633
    :cond_10
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    .line 634
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p5

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;ILandroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_4

    :cond_11
    :goto_3
    if-nez p6, :cond_13

    .line 564
    iget-object p5, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p5, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    if-eqz v4, :cond_12

    .line 567
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 568
    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 569
    move-object p0, p1

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 571
    :cond_12
    invoke-virtual {p1, p3, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_13
    :goto_4
    return-void
.end method

.method private onCheckedChanged(Landroid/net/Uri;Landroidx/preference/Preference;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, p2, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    .line 413
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshSummary(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 362
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshSwitch(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 435
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshTitle(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 325
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private replaceSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 666
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 670
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ", "

    const-string/jumbo v2, "\u060c "

    const-string/jumbo v3, "\u3001"

    const-string/jumbo v4, "\uff0c"

    const-string/jumbo v5, "\u104a "

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 678
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 679
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTopLevelSummarySeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 682
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Replace Separator from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 508
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 526
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings.category.ia.account_detail"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 527
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setSwitchChecked(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 447
    instance-of p0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz p0, :cond_0

    .line 448
    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 449
    :cond_0
    instance-of p0, p1, Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    .line 450
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSwitchEnabled(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 455
    instance-of p0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz p0, :cond_0

    .line 456
    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V
    .locals 7

    .line 465
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v1, 0x106000d

    .line 470
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 469
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 472
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 499
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    .line 503
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/dashboard/DashboardFragment;ZLandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            "Z",
            "Landroidx/preference/Preference;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    .line 147
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.settings.category.ia.homepage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 148
    iput-boolean v2, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mNeedToReplaceSeparator:Z

    :cond_0
    const/4 v11, 0x0

    if-nez v8, :cond_1

    return-object v11

    .line 155
    :cond_1
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v3, p6

    .line 156
    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p6

    .line 158
    invoke-virtual {v1, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 160
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-direct {v1, v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindTitleAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_3
    invoke-direct {v1, v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSummaryAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 167
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    .line 174
    invoke-direct {v1, v8, v9, v7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSwitchAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;I)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 177
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move/from16 v0, p3

    .line 179
    invoke-virtual {v1, v8, v9, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V

    .line 182
    invoke-direct {v1, v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindBadgeIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    .line 185
    instance-of v0, v9, Lcom/android/settingslib/drawer/ActivityTile;

    if-eqz v0, :cond_c

    .line 191
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    .line 195
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.intent.action"

    .line 196
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v11

    move-object v4, v0

    .line 198
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 199
    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_2

    .line 201
    :cond_7
    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v4, ":settings:source_metrics"

    .line 202
    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 205
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const/4 v4, 0x0

    const-string v5, "from_settings"

    .line 209
    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 210
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    move-object/from16 v4, p2

    .line 215
    instance-of v5, v4, Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz v5, :cond_b

    .line 216
    iget-object v5, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/ComponentName;

    .line 218
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v5, v13, v0, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 222
    iget-object v0, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, ":settings:is_second_layer_page"

    .line 224
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :cond_b
    new-instance v13, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    invoke-virtual {v8, v13}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 251
    :cond_c
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result v1

    .line 255
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7fffffff

    if-ne v10, v0, :cond_d

    goto :goto_3

    :cond_d
    add-int/2addr v1, v10

    .line 259
    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_4

    .line 257
    :cond_e
    :goto_3
    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 262
    :cond_f
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_10
    move-object v11, v12

    :goto_5
    return-object v11
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/CategoryManager;->getCategories(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "dashboard_tile_pref_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p0

    return-object p0
.end method
