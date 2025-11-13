.class public final Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHighUsageAppList:Ljava/util/List;

.field public final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v4, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    sget-object v5, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    :cond_0
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d004c

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->view:Landroid/view/View;

    const p2, 0x7f0a010e

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0115

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const p2, 0x7f0a0120

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p1
.end method
