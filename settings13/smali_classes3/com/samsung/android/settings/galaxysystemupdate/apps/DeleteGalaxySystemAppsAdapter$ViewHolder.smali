.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeleteGalaxySystemAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field installState:Landroid/widget/TextView;

.field packageName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

.field version:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$SRvxuMukM3nuKJda6zr5UjQ235Q(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iykCOg7n-1DYAXo7_DbjElkJj8k(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;Landroid/view/View;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    .line 46
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    sget p1, Lcom/android/settings/R$id;->package_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->packageName:Landroid/widget/TextView;

    .line 49
    sget p1, Lcom/android/settings/R$id;->version_code:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->version:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/android/settings/R$id;->install_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/android/settings/R$id;->selected_checkbox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 52
    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    new-instance p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->-$$Nest$fgetsearchData(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->setSelected(Z)V

    if-nez p2, :cond_0

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->-$$Nest$fgetlistener(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;)Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;->onItemSelected(Z)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;->-$$Nest$fgetlistener(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter;)Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$OnItemClickListener;->onItemSelected(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
