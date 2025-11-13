.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GalaxySystemAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;,
        Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;

.field private searchData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;)Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchData(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->onBindViewHolder(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;I)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    .line 77
    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->packageName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->version:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    iget-object p0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getLastModifiedDate()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 84
    iget-object p1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->galaxy_system_app_update_installed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getLastModifiedDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->galaxy_system_app_update_installed:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_galaxy_system_apps_package_item_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->context:Landroid/content/Context;

    .line 71
    new-instance p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;

    return-void
.end method
