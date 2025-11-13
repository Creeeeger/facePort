.class public final synthetic Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->$r8$lambda$da5CUClLSNLbpeCeNTDjZWISIbA(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;Ljava/util/ArrayList;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
