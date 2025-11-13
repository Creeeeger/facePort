.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
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

    .line 58
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 59
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->isSupportBackup(Landroid/content/Context;)Z

    move-result p4

    .line 60
    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->isEnableBackup(Landroid/content/Context;)Z

    move-result v0

    .line 61
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] GET_CLIENT_INFO, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "support_backup"

    .line 64
    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "name"

    .line 65
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "is_enable_backup"

    .line 66
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "label"

    .line 67
    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "description"

    .line 68
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
