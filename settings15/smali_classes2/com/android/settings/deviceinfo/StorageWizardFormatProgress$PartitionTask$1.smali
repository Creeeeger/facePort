.class public final Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

.field public final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    mul-int/lit8 p1, p1, 0x28

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x28

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;[Ljava/lang/Object;)V

    return-void
.end method
