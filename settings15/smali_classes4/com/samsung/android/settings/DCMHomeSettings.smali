.class public Lcom/samsung/android/settings/DCMHomeSettings;
.super Landroidx/fragment/app/ListFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PRELOADED_HOME_PKGS:[Ljava/lang/String;


# instance fields
.field public mAppList:Ljava/util/List;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mCurrentHomePkg:Ljava/lang/String;

.field public mHasEasyLauncher:Z

.field public mHomeApps:Ljava/util/List;

.field public mPm:Landroid/content/pm/PackageManager;

.field public final mPreloadedHomeList:Ljava/util/HashSet;

.field public mResolver:Landroid/content/ContentResolver;

.field public mSamsungHomeLabel:Ljava/lang/String;

.field public mSelectedHomePkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "com.sec.android.app.kidshome"

    const-string v10, "com.android.settings"

    const-string v0, "com.nttdocomo.android.paletteui"

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.homezozo"

    const-string v3, "com.google.android.setupwizard"

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.kidslauncher"

    const-string v7, "com.sec.android.app.SecSetupWizard"

    const-string v8, "com.sec.android.app.longlifemodelauncher"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0x10040

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string p1, "com.nttdocomo.android.dhome"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-string v1, "DCMHomeSettings"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.nttdocomo.android.dhome"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "com.nttdocomo.android.homezozo"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.nttdocomo.android.homezozo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "com.nttdocomo.android.paletteui"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.nttdocomo.android.paletteui"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string p1, "com.sec.android.app.launcher"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    :cond_3
    const-string p1, "add home : com.sec.android.app.launcher"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string p1, "com.sec.android.app.easylauncher"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.sec.android.app.easylauncher"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p1, "There is no easy launcher"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "device_provisioned"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "pkg="

    const-string v3, "com.sec.android.app.SecSetupWizard"

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.google.android.setupwizard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-string v2, "[Remove] pkg="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_b
    const/16 p0, 0x37

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEntranceLogging(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d08c8

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onListItemClick(Landroid/view/View;I)V
    .locals 3

    const-string/jumbo p1, "onListItemClick : "

    const-string v0, "DCMHomeSettings"

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf39

    invoke-static {v0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f142493

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/DCMHomeSettings$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/DCMHomeSettings$1;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Do not change to current home"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentHomePkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    const-string v2, "DCMHomeSettings"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final setEasymode(ZZ)V
    .locals 10

    const-string/jumbo v0, "setEasymode="

    const-string v1, ", isDCMHome="

    const-string v2, "DCMHomeSettings"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Easy mode feature is disabled."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "easy_mode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    const-string v1, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "samsung"

    const-string v6, "docomo"

    const-string v7, "homemode_jpn"

    if-eqz p2, :cond_3

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v8, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    invoke-virtual {v8, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v8, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    return-void
.end method
