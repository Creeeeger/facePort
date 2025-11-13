.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$4;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->onCreateDialog(I)Landroid/app/Dialog;
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

    .line 260
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "SimLockStatus"

    const-string p2, "Download policy file"

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;

    move-result-object p1

    .line 265
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    move-result-object p1

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmSimLockPolicyBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->setBlob([B)V

    return-void
.end method
