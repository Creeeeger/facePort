.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$1;
.super Landroid/os/Handler;
.source "SimLockStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 94
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SimLockStatus"

    const-string v0, "MESSAGE_UPDATE_LIST -> updateSimStatus()"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$mupdateSimStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    :goto_0
    return-void
.end method
