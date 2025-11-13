.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GalaxySystemAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field installState:Landroid/widget/TextView;

.field packageName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

.field version:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$IdvsxNbbjvvG-yxyIqHElJZ3wbo(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->lambda$new$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    .line 43
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    sget p1, Lcom/android/settings/R$id;->package_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->packageName:Landroid/widget/TextView;

    .line 46
    sget p1, Lcom/android/settings/R$id;->version_code:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->version:Landroid/widget/TextView;

    .line 47
    sget p1, Lcom/android/settings/R$id;->install_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    .line 49
    new-instance p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->-$$Nest$fgetlistener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;)Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->-$$Nest$fgetsearchData(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->-$$Nest$fgetsearchData(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isStaged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->-$$Nest$fgetlistener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;)Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;->onLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
