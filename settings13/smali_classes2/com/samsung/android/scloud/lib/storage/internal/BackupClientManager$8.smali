.class Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;
.super Ljava/lang/Object;
.source "BackupClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "client",
            "sourceKey",
            "extras"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getFileDescriptor(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
