.class Landroid/app/wearable/WearableSensingManager$1;
.super Landroid/app/wearable/IWearableSensingCallback$Stub;
.source "WearableSensingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/wearable/WearableSensingManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Gtfj7A2IVR2kFtlzeg6PG4SBaLs(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/wearable/WearableSensingManager$1;->lambda$openFile$1(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i795Q_Cs00OS0UpdXPr6oXxDvq4(Landroid/app/wearable/WearableSensingManager$1;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingManager$1;->lambda$openFile$0(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager$1;->this$0:Landroid/app/wearable/WearableSensingManager;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$openFile$0(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 6

    const-string v0, "Error closing ParcelFileDescriptor."

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager$1;->this$0:Landroid/app/wearable/WearableSensingManager;

    invoke-static {v2}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    nop

    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot open file."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    throw v3
.end method

.method private synthetic blacklist lambda$openFile$1(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWearableSensingCallback#openFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
