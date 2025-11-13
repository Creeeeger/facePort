.class public final Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public context:Landroid/content/Context;

.field public listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

.field public searchData:Ljava/util/ArrayList;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->packageName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->version:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    iget-boolean p2, p2, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory:Z

    if-eqz p2, :cond_0

    iget-object p0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->lastModifiedDate:Ljava/lang/String;

    const v1, 0x7f141055

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->context:Landroid/content/Context;

    const-string v2, " ("

    invoke-static {p0, v1, p2, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->lastModifiedDate:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0d08c3

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->context:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;Landroid/view/View;)V

    return-object p1
.end method
