.class Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;
.super Ljava/lang/Object;
.source "FileClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$fileClient:Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;

.field final synthetic val$result:Landroid/os/Bundle;

.field final synthetic val$sourceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$result",
            "val$context",
            "val$sourceKey",
            "val$fileClient",
            "val$extras"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;->this$1:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;->val$sourceKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;->val$fileClient:Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;

    iput-object p6, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
