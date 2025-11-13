.class public final synthetic Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

.field public final synthetic f$1:[Landroid/os/Messenger;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;->f$1:[Landroid/os/Messenger;

    iput-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;->f$1:[Landroid/os/Messenger;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;

    invoke-direct {v3, v0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
