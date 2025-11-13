.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 312
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "persist.sys.kddi_sim_lock"

    const-string v0, "0"

    .line 314
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmTestDialog(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmTestDialog(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$mstartMainSIMLock(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    return-void
.end method
