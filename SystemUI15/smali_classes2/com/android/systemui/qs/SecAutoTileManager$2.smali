.class public final Lcom/android/systemui/qs/SecAutoTileManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.systemui.qs.action.ACTION_UPDATE_CUSTOMTILE_VISIBILITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    const-string v0, "AutoTileManager"

    if-eqz p1, :cond_0

    const-string p0, "EmergencyMode is enabled : do not change tile list"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "operation"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "componentName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tileName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v4, "TileVisibilityUpdate : ["

    const-string v5, "] "

    const-string v6, ":"

    invoke-static {v4, p1, v5, v3, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v4, v2, v5, v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object p1, p1, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda22;

    invoke-direct {v2, p1, v0, v3, p2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/content/ComponentName;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    const/4 p1, 0x1

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->-$$Nest$mupdateRemovedTileListByAppIntent(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "remove"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object p1, p1, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSTileHost;->removeTileByUser(Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    const/4 p1, 0x0

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->-$$Nest$mupdateRemovedTileListByAppIntent(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
