.class public final synthetic Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

.field public final synthetic f$1:[Landroid/os/Messenger;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;->f$1:[Landroid/os/Messenger;

    iput-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;->f$1:[Landroid/os/Messenger;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->$r8$lambda$wQPK6YwVVv8EYf-hj-RkVwjSQbk(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
