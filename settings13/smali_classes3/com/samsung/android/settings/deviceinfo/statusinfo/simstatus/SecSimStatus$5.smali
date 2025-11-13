.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;
.super Ljava/lang/Object;
.source "SecSimStatus.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->createImsService(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 1130
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmIsRegistered(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)[Z

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->val$slotId:I

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$misImsRegistered(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 1131
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateImsStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmImsManager(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;->val$slotId:I

    const/4 v1, 0x0

    aput-object v1, v0, p0

    return-void
.end method
