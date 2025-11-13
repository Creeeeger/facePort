.class public Lcom/samsung/android/settings/DCMHomeSettings;
.super Landroidx/fragment/app/ListFragment;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
    }
.end annotation


# static fields
.field public static final PRELOADED_HOME_PKGS:[Ljava/lang/String;


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentHomePkg:Ljava/lang/String;

.field private mHasEasyLauncher:Z

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPreloadedHomeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSamsungHomeLabel:Ljava/lang/String;

.field private mSelectedHomePkg:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamsungHomeLabel(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeHome(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->changeHome(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartLauncher(Lcom/samsung/android/settings/DCMHomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->startLauncher()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    const-string v0, "com.nttdocomo.android.paletteui"

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.homezozo"

    const-string v3, "com.google.android.setupwizard"

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.kidslauncher"

    const-string v7, "com.sec.android.app.SecSetupWizard"

    const-string v8, "com.sec.android.app.longlifemodelauncher"

    const-string v9, "com.sec.android.app.kidshome"

    const-string v10, "com.android.settings"

    .line 79
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    .line 92
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    return-void
.end method

.method private changeHome(I)V
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeHome "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCMHomeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-nez p1, :cond_0

    const-string p0, "changeHome) info is null."

    .line 237
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    .line 242
    iget-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-nez v0, :cond_1

    return-void

    .line 246
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.nttdocomo.android.dhome"

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const-string v0, "com.nttdocomo.android.homezozo"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.nttdocomo.android.paletteui"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "com.sec.android.app.launcher"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_1

    :cond_3
    const-string v0, "com.sec.android.app.easylauncher"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 254
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_1

    .line 256
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_1

    .line 250
    :cond_5
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    :goto_1
    return-void
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 344
    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 345
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 346
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 348
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

.method private isPreffered(Ljava/lang/String;)Z
    .locals 2

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 340
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setEasymode(ZZ)V
    .locals 10

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEasymode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDCMHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCMHomeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Easy mode feature is disabled."

    .line 286
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "easy_mode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
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

    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "easymode"

    .line 297
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "easymode_from"

    const-string/jumbo v4, "settings"

    .line 298
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "docomo"

    const-string/jumbo v6, "samsung"

    const-string v7, "homemode_jpn"

    if-eqz p2, :cond_3

    .line 300
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {v8, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    .line 310
    invoke-virtual {v8, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {v8, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v8, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    return-void
.end method

.method private startLauncher()V
    .locals 2

    const-string v0, "DCMHomeSettings"

    const-string/jumbo v1, "startLauncher"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 197
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    new-instance p1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$xml;->sec_home_settings_list_item_third:I

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0x10040

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string p1, "com.nttdocomo.android.dhome"

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-string v1, "DCMHomeSettings"

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.nttdocomo.android.dhome"

    .line 119
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "com.nttdocomo.android.homezozo"

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.nttdocomo.android.homezozo"

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "com.nttdocomo.android.paletteui"

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.nttdocomo.android.paletteui"

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string p1, "com.sec.android.app.launcher"

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    :cond_3
    const-string p1, "add home : com.sec.android.app.launcher"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string p1, "com.sec.android.app.easylauncher"

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "add home : com.sec.android.app.easylauncher"

    .line 137
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p1, "There is no easy launcher"

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    .line 144
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "device_provisioned"

    .line 145
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    move p1, v0

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    if-nez p1, :cond_8

    .line 147
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8

    .line 148
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 149
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 150
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 151
    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 157
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_4
    if-ltz p1, :cond_b

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 159
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.app.SecSetupWizard"

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.google.android.setupwizard"

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 163
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Remove] pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_b
    const/16 p0, 0x37

    .line 168
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 173
    sget p0, Lcom/android/settings/R$layout;->sec_home_settings_dcm:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onListItemClick : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DCMHomeSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_1

    .line 205
    iget-object p4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget-object p5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 206
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xf39

    .line 211
    invoke-static {p2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 213
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p4, Lcom/android/settings/R$string;->sec_home_settings_message:I

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p5, v0

    .line 216
    invoke-virtual {p0, p4, p5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p4, Lcom/samsung/android/settings/DCMHomeSettings$1;

    invoke-direct {p4, p0, p3}, Lcom/samsung/android/settings/DCMHomeSettings$1;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    .line 217
    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    .line 227
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Do not change to current home"

    .line 207
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 177
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    .line 182
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentHomePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCMHomeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 267
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 269
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 271
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    .line 274
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget p1, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method
