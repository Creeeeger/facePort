.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeleteGalaxySystemAppsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;

.field private handler:Landroid/os/Handler;

.field private removeButtonLayout:Landroid/widget/RelativeLayout;

.field private selectedPkgName:Ljava/lang/String;

.field private seletedPackageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method public static synthetic $r8$lambda$TjTvN4rIdA0ilhxgS1HN_H7Kkn8(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->lambda$setBottomNaviButtonForRemove$3(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VKVG-VN6YirBPw8J-dflsufLldA(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->lambda$setBottomNaviButtonForRemove$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vbP7o_iF9DKrCzfNEFfaKGWIa7M(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->lambda$showtPackageList$0(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$x5YgEn7jQzySQ9J3ldHDBkIGApo(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->lambda$setBottomNaviButtonForRemove$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdowngradeGalaxySystemApps(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->downgradeGalaxySystemApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->selectedPkgName:Ljava/lang/String;

    return-void
.end method

.method private downgradeGalaxySystemApps()V
    .locals 6

    .line 154
    sget-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    const-string v1, "downgradeGalaxySystemApps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->seletedPackageQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 157
    new-instance v2, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;)V

    .line 170
    invoke-static {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->getPreloadFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DestPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, v4, p0, v1, v3}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->downgradeApexPackage()V

    .line 175
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->addListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 177
    invoke-interface {v2, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;->onResult(Z)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->dialog:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->resetDevice(Landroid/content/Context;)V

    const-string p0, "dialog.dismiss"

    .line 182
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$setBottomNaviButtonForRemove$1(Z)V
    .locals 3

    .line 127
    sget-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->getCheckedPackageName()Ljava/util/ArrayList;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->seletedPackageQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->downgradeGalaxySystemApps()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$setBottomNaviButtonForRemove$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$setBottomNaviButtonForRemove$3(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;Landroid/view/MenuItem;)Z
    .locals 1

    .line 142
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/android/settings/R$id;->delete_btn:I

    if-ne p2, v0, :cond_0

    .line 143
    new-instance p2, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->seletedPackageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->dialog:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showtPackageList$0(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static resetDevice(Landroid/content/Context;)V
    .locals 2

    .line 187
    sget-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    const-string v1, "reboot device to apply new apex version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "power"

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "pkg_name"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->selectedPkgName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 55
    sget-object p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected_pos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->selectedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->TAG:Ljava/lang/String;

    const-string v0, "icicle is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->context:Landroid/content/Context;

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->handler:Landroid/os/Handler;

    .line 67
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->seletedPackageQueue:Ljava/util/Queue;

    return-void

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "There is no looper in the calling thread."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 72
    sget p2, Lcom/android/settings/R$layout;->sec_galaxy_system_apps_package:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/core/SettingsBaseActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->settingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->showtPackageList(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->setBottomNaviButtonForRemove()V

    .line 78
    iget-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->selectedPkgName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public setBottomNaviButtonForRemove()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->settingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    .line 126
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 139
    sget v2, Lcom/android/settings/R$layout;->sec_bottom_naviagtion_delete_layout:I

    iget-object v3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 141
    new-instance v2, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method showtPackageList(Landroid/view/View;)V
    .locals 6

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->getActiveApexList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->selectedPkgName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    .line 90
    invoke-virtual {v3}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->selectedPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->setSelected(Z)V

    .line 96
    :cond_1
    sget v1, Lcom/android/settings/R$id;->text_no_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    sget v2, Lcom/android/settings/R$id;->galaxy_system_package_list:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    .line 105
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->setOnItemClickListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
