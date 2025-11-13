.class public final synthetic Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;

    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    iget-boolean v0, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    iget-boolean v0, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isStaged:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    iget-object v0, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->showDeleteActivity(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
