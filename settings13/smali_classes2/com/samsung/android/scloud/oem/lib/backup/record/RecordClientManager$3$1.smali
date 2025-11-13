.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$observingUri:Landroid/net/Uri;

.field final synthetic val$progress:[J

.field final synthetic val$sourceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;[JLjava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$progress",
            "val$sourceKey",
            "val$observingUri",
            "val$context"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;->this$1:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;->val$progress:[J

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;->val$sourceKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;->val$observingUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
