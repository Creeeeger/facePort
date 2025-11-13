.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $packagesToStartTime:Ljava/util/Map;

.field public final synthetic $profileIds:Ljava/util/Set;

.field public final synthetic $refreshUiControls:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/util/Map;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$packagesToStartTime:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$profileIds:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$refreshUiControls:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v11, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$packagesToStartTime:Ljava/util/Map;

    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$profileIds:Ljava/util/Set;

    iget-boolean v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;->$refreshUiControls:Z

    sget v2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->$r8$clinit:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    goto :goto_0

    :cond_0
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    iget v5, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->getUiControl()Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v13

    if-eqz v3, :cond_3

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    iget-object v1, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    invoke-virtual {v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->getUiControl()Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    move-result-object v20

    iget-object v5, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    iget-object v5, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    iget v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    iget-object v4, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    move-object v15, v3

    move/from16 v16, v1

    move-object/from16 v17, v4

    invoke-direct/range {v15 .. v22}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-object v2, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v15, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    const/4 v4, 0x1

    iget-wide v7, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    const/16 v16, 0x0

    move-object v0, v9

    move-object v1, v10

    move-object v13, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/lang/String;IIJJZ)V

    invoke-interface {v15, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    iget-object v2, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    new-instance v9, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-wide v6, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    iget-object v8, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    iget v4, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    iget-object v5, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    iget-object v4, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    iput-object v4, v9, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v9, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v0, v10, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;

    invoke-direct {v1, v10}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
