.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->onSetBlobFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

.field final synthetic val$bSucceed:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;Z)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    iput-boolean p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;->val$bSucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;->val$bSucceed:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->access$000(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->access$100(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V

    :goto_0
    return-void
.end method
