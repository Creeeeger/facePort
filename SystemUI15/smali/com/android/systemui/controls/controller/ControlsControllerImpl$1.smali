.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/UserStructure;->file:Ljava/io/File;

    new-instance v3, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Landroid/app/backup/BackupManager;Lcom/android/systemui/util/settings/SecureSettings;)V

    return-object v0
.end method
