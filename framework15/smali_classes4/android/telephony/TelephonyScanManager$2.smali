.class Landroid/telephony/TelephonyScanManager$2;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyScanManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$2;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$2;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmHandler(Landroid/telephony/TelephonyScanManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
