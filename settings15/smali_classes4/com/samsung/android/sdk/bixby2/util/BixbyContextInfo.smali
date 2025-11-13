.class public final Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bixbyClientTaskId:Ljava/lang/Integer;

.field public final isMediaControlActive:Z

.field public final isMusicActive:Z

.field public final locale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "locale"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    const-string v0, "isMusicActive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    const-string v0, "isMediaControlActive"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    const-string v0, "bixbyClient_taskId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->bixbyClientTaskId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
