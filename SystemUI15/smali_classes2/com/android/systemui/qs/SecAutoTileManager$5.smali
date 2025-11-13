.class public final Lcom/android/systemui/qs/SecAutoTileManager$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onManagedProfileChanged()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->hasActiveProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v2, "WorkMode"

    iget-object v3, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v2, "WorkMode"

    iget-object v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->restoredTiles:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;->index:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v2, v2, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    const-string v3, "WorkMode"

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v0, "WorkMode"

    iget-object v2, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v5, v1

    monitor-exit v2

    if-eqz v5, :cond_6

    iget v8, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v4, "qs_auto_tiles"

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v2, "WorkMode"

    iget-object v3, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    monitor-enter v3

    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v3

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    const-string v2, "WorkMode"

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v0, "WorkMode"

    iget-object v2, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    monitor-enter v2

    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ","

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    move-object v5, v1

    monitor-exit v2

    if-eqz v5, :cond_6

    iget v8, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v4, "qs_auto_tiles"

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    :cond_6
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public final onManagedProfileRemoved()V
    .locals 0

    return-void
.end method
