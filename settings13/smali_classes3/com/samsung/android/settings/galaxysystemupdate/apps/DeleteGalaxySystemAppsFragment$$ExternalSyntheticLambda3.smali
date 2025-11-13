.class public final synthetic Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

.field public final synthetic f$1:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->$r8$lambda$TjTvN4rIdA0ilhxgS1HN_H7Kkn8(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$Listener;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
