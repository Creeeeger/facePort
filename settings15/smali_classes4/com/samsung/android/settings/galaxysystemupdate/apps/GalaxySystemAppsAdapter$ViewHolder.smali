.class public final Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final installState:Landroid/widget/TextView;

.field public final packageName:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

.field public final version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0b0b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->packageName:Landroid/widget/TextView;

    const p1, 0x7f0a10e9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->version:Landroid/widget/TextView;

    const p1, 0x7f0a0804

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;->installState:Landroid/widget/TextView;

    new-instance p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
