.class public final Lcom/android/systemui/qs/SecAutoTileManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final COMPONENT_TO_TILE_SPEC_MAPPING:Ljava/util/Map;

.field public final TILE_SPEC_TO_COMPONENT_MAPPING:Ljava/util/Map;

.field public final TILE_SPEC_TO_TILE_COMPONENT_MAPPING:Ljava/util/Map;

.field public final mA11yQsObserver:Lcom/android/systemui/qs/SecAutoTileManager$4;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUser:Landroid/os/UserHandle;

.field public final mDemoResetStartedReceiver:Lcom/android/systemui/qs/SecAutoTileManager$3;

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field public mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

.field public final mProfileCallback:Lcom/android/systemui/qs/SecAutoTileManager$5;

.field public final mRemovedTileListByAppIntent:Ljava/util/ArrayList;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mTileChangedCallback:Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda0;

.field public final mTileVisibilityUpdateReceiver:Lcom/android/systemui/qs/SecAutoTileManager$2;

.field public final previousAddedQs:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mupdateRemovedTileListByAppIntent(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateRemovedTileListByAppIntent : isAdded = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", spec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemovedTileListByAppIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTileManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    iput-object v5, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/qs/SecAutoTileManager;->previousAddedQs:Ljava/util/ArrayList;

    const/4 v5, 0x7

    new-array v6, v5, [Ljava/util/Map$Entry;

    sget-object v7, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v8, "ColorCorrection"

    invoke-static {v8, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    sget-object v9, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v11, "ColorInversion"

    invoke-static {v11, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v6, v15

    sget-object v14, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v15, "onehanded"

    invoke-static {v15, v14}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v6, v18

    sget-object v10, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v5, "ReduceBrightColors"

    invoke-static {v5, v10}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v19

    const/16 v20, 0x3

    aput-object v19, v6, v20

    sget-object v13, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v4, "font_scaling"

    invoke-static {v4, v13}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v19

    const/16 v21, 0x4

    aput-object v19, v6, v21

    sget-object v12, Lcom/android/internal/accessibility/AccessibilityShortcutController;->HIGH_CONTRAST_FONTS_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v1, "HighContrastFont"

    invoke-static {v1, v12}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v19

    const/16 v22, 0x5

    aput-object v19, v6, v22

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_LENS_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v2, "ColorLens"

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v19

    const/16 v23, 0x6

    aput-object v19, v6, v23

    invoke-static {v6}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/qs/SecAutoTileManager;->TILE_SPEC_TO_COMPONENT_MAPPING:Ljava/util/Map;

    move-object/from16 v19, v3

    const/4 v6, 0x7

    new-array v3, v6, [Ljava/util/Map$Entry;

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v8, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v17, 0x0

    aput-object v6, v3, v17

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v11, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v3, v16

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v15, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v18

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v5, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v20

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v4, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v21

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->HIGH_CONTRAST_FONTS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v1, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v22

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_LENS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v2, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v23

    invoke-static {v3}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecAutoTileManager;->TILE_SPEC_TO_TILE_COMPONENT_MAPPING:Ljava/util/Map;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/util/Map$Entry;

    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v9, v11}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v14, v15}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v18

    invoke-static {v10, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    aput-object v5, v3, v20

    invoke-static {v13, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v3, v21

    invoke-static {v12, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v3, v22

    move-object/from16 v1, v19

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v3, v23

    invoke-static {v3}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecAutoTileManager;->COMPONENT_TO_TILE_SPEC_MAPPING:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/qs/SecAutoTileManager$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/SecAutoTileManager$5;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v2, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v5, p2

    iput v4, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->userId:I

    new-instance v4, Lcom/android/systemui/qs/AutoAddTracker;

    iget-object v11, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->executor:Ljava/util/concurrent/Executor;

    iget v12, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->userId:I

    iget-object v9, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v10, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->handler:Landroid/os/Handler;

    iget-object v6, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v7, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v8, v5, Lcom/android/systemui/qs/AutoAddTracker$Builder;->qsHost:Lcom/android/systemui/qs/QSHost;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/qs/AutoAddTracker;-><init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)V

    iput-object v4, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v5, Lcom/android/systemui/qs/SecAutoTileManager$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/SecAutoTileManager$1;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iput-object v5, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-static {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v5, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance v6, Lcom/android/systemui/qs/SecAutoTileManager$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/qs/SecAutoTileManager$2;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    const-string v5, "com.samsung.systemui.qs.action.ACTION_UPDATE_CUSTOMTILE_VISIBILITY"

    invoke-static {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    const-string v11, "com.samsung.systemui.permission.SEC_UPDATE_CUSTOMTILE_VISIBILITY"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    new-instance v5, Lcom/android/systemui/qs/SecAutoTileManager$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/SecAutoTileManager$3;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    const-string v6, "WorkMode"

    iget-object v7, v4, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    monitor-enter v7

    :try_start_0
    iget-object v4, v4, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    if-nez v4, :cond_0

    move-object v4, v5

    check-cast v4, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/SecAutoTileManager;->updateA11yQsTiles()V

    new-instance v2, Lcom/android/systemui/qs/SecAutoTileManager$4;

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/qs/SecAutoTileManager$4;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;Landroid/os/Handler;)V

    const-string v0, "accessibility_qs_targets"

    const/4 v3, -0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public final isRemovedTileByAppIntent(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "isRemovedTileByAppIntent : spec = "

    const-string v1, ", mRemovedTileListByAppIntent = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTileManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final updateA11yQsTiles()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v4, "accessibility_qs_targets"

    invoke-interface {v3, v4, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/qs/SecAutoTileManager;->COMPONENT_TO_TILE_SPEC_MAPPING:Ljava/util/Map;

    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/SecAutoTileManager;->previousAddedQs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->previousAddedQs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "custom("

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/SecAutoTileManager;->TILE_SPEC_TO_COMPONENT_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QSTileHost;->removeTiles(Ljava/util/Collection;)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateA11yQsTiles  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->previousAddedQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoTileManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->previousAddedQs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->previousAddedQs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
