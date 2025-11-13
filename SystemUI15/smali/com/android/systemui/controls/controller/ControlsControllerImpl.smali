.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/controls/controller/ControlsController;
.implements Lcom/android/systemui/controls/controller/SecControlsController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final autoAddList:Ljava/util/List;

.field public final auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

.field public final context:Landroid/content/Context;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public currentUser:Landroid/os/UserHandle;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public isAutoRemove:Z

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

.field public final restoreFinishedReceiver:Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;

.field public final secBindingController:Lcom/android/systemui/controls/controller/SecControlsBindingController;

.field public final secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

.field public final secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final seedingCallbacks:Ljava/util/List;

.field public seedingInProgress:Z

.field public final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

.field public userChanging:Z

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public userStructure:Lcom/android/systemui/controls/controller/UserStructure;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/controls/controller/ControlsBindingController;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/controls/controller/SecControlsBindingController;Lcom/android/systemui/controls/ui/SecControlsUiController;Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            "Lcom/android/systemui/controls/panels/SelectedComponentRepository;",
            "Lcom/android/systemui/controls/controller/ControlsBindingController;",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            "Lcom/android/systemui/settings/UserFileManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/controls/controller/SecControlsBindingController;",
            "Lcom/android/systemui/controls/ui/SecControlsUiController;",
            "Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v7, p3

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    move-object v7, p5

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    iput-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iput-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secBindingController:Lcom/android/systemui/controls/controller/SecControlsBindingController;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    iput-object v6, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->autoAddList:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v7, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-direct {v5, p1, v7, p7}, Lcom/android/systemui/controls/controller/UserStructure;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/systemui/settings/UserFileManager;)V

    iput-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    new-instance v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    move-object/from16 v5, p10

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    iput-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    new-instance v4, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    iget-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v5, v5, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    invoke-direct {v4, v5, p2, v6}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;)V

    iput-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    new-instance v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    new-instance v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    new-instance v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    move-object/from16 v5, p11

    invoke-virtual {v5, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.android.systemui.backup.RESTORE_FINISHED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    const-string v6, "com.android.systemui.permission.SELF"

    const/4 v7, 0x0

    move-object p0, p1

    move-object p1, v2

    move-object p2, v0

    move-object p3, v6

    move-object p4, v7

    move p5, v5

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v0, v4}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    return-void
.end method

.method public static synthetic getAuxiliaryPersistenceWrapper$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRestoreFinishedReceiver$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSettingObserver$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isAutoRemove$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final changeUser(Landroid/os/UserHandle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/os/UserHandle;)V

    const-wide/16 v1, 0x1e

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    return-void
.end method

.method public final confirmAvailability()Z
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    if-eqz p0, :cond_0

    const-string p0, "ControlsControllerImpl"

    const-string v0, "Controls not available while user is changing"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final createRemovedStatus(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance v0, Landroid/service/controls/Control$StatelessBuilder;

    iget-object v1, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p0, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/service/controls/Control$StatelessBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    iget-object v0, p2, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/service/controls/Control$StatelessBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/service/controls/Control$StatelessBuilder;->setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    iget p2, p2, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    invoke-virtual {p0, p2}, Landroid/service/controls/Control$StatelessBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/controls/ControlStatus;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V

    return-object p2
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "ControlsController state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    const-string v0, "  Changing users: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Current user: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  Favorites:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/ControlInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getActiveFavoritesComponent()Ljava/util/List;
    .locals 6

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-boolean v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->autoAddList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActiveFavoritesComponent getFavorites = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ControlsControllerImpl"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "getActiveFavoritesComponent activeFavoriteStructureInfos = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", favoriteComponentInfos = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public final getCurrentUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public final loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v3, 0x1f4

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    :cond_0
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v0, v2}, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$5;

    invoke-direct {p2, p4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$5;-><init>(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secBindingController:Lcom/android/systemui/controls/controller/SecControlsBindingController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-eqz p4, :cond_2

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;

    invoke-direct {v1, p4}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)V

    :cond_2
    new-instance p4, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    const-wide/32 v1, 0x186a0

    invoke-direct {p4, p0, v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;J)V

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$2;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$2;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v2, 0x14

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;

    invoke-direct {p1, p0, p4, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;Landroid/service/controls/IControlsProviderInfoSubscriber;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    new-instance p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;

    invoke-direct {p0, p4}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)V

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;-><init>(Lcom/android/systemui/controls/controller/ComponentInfo;ZLcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetFavorites()V
    .locals 5

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->readFavorites()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    check-cast p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->addAuthorizedPanels(Ljava/util/Set;)V

    return-void
.end method

.method public final seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;)V

    const-wide/16 p1, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, p1, p2, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    new-instance v0, Lcom/android/systemui/controls/controller/SeedResponse;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setActivePanelFlag(Landroid/content/ComponentName;Z)V
    .locals 10

    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    iput-boolean p2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/controls/controller/StructureInfo;

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v5, ""

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_1
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setActivePanelFlag = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", active = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Favorites"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V
    .locals 10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p3, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSeeding remainingComponentNames = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ControlsControllerImpl"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v4, "get stacks"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v1, "Beginning request to seed favorites for: "

    invoke-static {v1, v0, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, v0

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;Landroid/content/ComponentName;Ljava/util/List;Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-eqz p2, :cond_2

    new-instance p3, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)V

    :cond_2
    new-instance p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    const-wide/16 v1, 0x24

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;J)V

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoadSuggested$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoadSuggested$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v1, 0x14

    invoke-interface {v0, p1, v1, v2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Suggest;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Suggest;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method

.method public final subscribeToFavorites(Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->isAutoRemove:Z

    iget-object v0, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.samsung.android.oneconnect"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secBindingController:Lcom/android/systemui/controls/controller/SecControlsBindingController;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    move-object p0, v2

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$loadControlsProviderInfo$ps$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$loadControlsProviderInfo$ps$1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsProviderInfoSubscriber;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    :cond_1
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    iget-object p0, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    iget-object v1, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v6, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/32 v7, 0x186a0

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    iput-object v0, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method
