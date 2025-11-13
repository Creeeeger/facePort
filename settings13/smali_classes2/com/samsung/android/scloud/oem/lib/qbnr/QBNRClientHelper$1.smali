.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
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

    .line 47
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] GET_CLIENT_INFO , "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->isSupportBackup(Landroid/content/Context;)Z

    move-result p0

    .line 49
    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->isEnableBackup(Landroid/content/Context;)Z

    move-result p4

    .line 50
    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "support_backup"

    .line 53
    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "name"

    .line 54
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_enable_backup"

    .line 55
    invoke-virtual {p2, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "label"

    .line 56
    invoke-virtual {p2, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "description"

    .line 57
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "] GET_CLIENT_INFO, "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
