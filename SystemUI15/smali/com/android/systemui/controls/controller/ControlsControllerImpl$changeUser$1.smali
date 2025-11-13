.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newUser:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;->$newUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$changeUser$1;->$newUser:Landroid/os/UserHandle;

    sget v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Changing to user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ControlsControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    new-instance v1, Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/controls/controller/UserStructure;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/systemui/settings/UserFileManager;)V

    iput-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/UserStructure;->file:Ljava/io/File;

    new-instance v2, Landroid/app/backup/BackupManager;

    iget-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    iput-object v1, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    iput-object v2, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->backupManager:Landroid/app/backup/BackupManager;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    iget-object v3, v2, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    iput-object v1, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->initialize()V

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites()V

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-interface {v1, p0}, Lcom/android/systemui/util/UserAwareController;->changeUser(Landroid/os/UserHandle;)V

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->changeUser(Landroid/os/UserHandle;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    return-void
.end method
