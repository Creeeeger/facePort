.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DeleteGalaxySystemAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;,
        Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;

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
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;)Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchData(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

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

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCheckedPackageName()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    .line 113
    invoke-virtual {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedCount()I
    .locals 2

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    .line 123
    invoke-virtual {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->onBindViewHolder(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;I)V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    .line 85
    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->packageName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->version:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getLastModifiedDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->context:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->galaxy_system_app_update_installed:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getLastModifiedDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->galaxy_system_app_update_installed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 98
    iget-object p1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object p0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_galaxy_system_apps_package_delete_item_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->context:Landroid/content/Context;

    .line 79
    new-instance p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;

    return-void
.end method
