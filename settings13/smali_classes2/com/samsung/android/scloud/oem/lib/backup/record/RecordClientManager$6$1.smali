.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6$1;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6;

.field final synthetic val$client:Ljava/lang/Object;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Bundle;)V
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
            "val$result",
            "val$client",
            "val$context",
            "val$extras"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6$1;->this$1:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6$1;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6$1;->val$client:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
