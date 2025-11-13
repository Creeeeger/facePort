.class public Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SwitchForIndividualAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchableAppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mParent:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;


# direct methods
.method static bridge synthetic -$$Nest$misChecked(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->isChecked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetEnabled(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->setEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 368
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mAppList:Ljava/util/List;

    const/4 p1, 0x0

    .line 369
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mIsEnabled:Z

    .line 372
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mParent:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    .line 373
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mContext:Landroid/content/Context;

    .line 374
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method private isChecked(I)Z
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setEnabled(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mIsEnabled:Z

    return-void
.end method

.method private setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 391
    instance-of v0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    if-eqz v0, :cond_3

    .line 392
    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 394
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    .line 395
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 396
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    iget v2, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget v0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    const-string v2, "SwitchForIndividualAppsSettings"

    const v3, 0x186a0

    if-le v0, v3, :cond_0

    .line 405
    :try_start_0
    div-int/2addr v0, v3

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder - userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 408
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 409
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 410
    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 411
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 412
    iget-object v8, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v6, :cond_2

    .line 416
    invoke-virtual {v0, v4, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while building userInfo for uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-ge v0, v3, :cond_1

    .line 424
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder - NameNotFoundException "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appSwitch:Landroid/widget/Switch;

    iget v0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->isChecked(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 436
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->semSetRoundedCorners(I)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_preference_app:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 463
    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
