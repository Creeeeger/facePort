.class Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;
.super Ljava/lang/Object;
.source "SemDeviceHealthManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sdhms/SemDeviceHealthManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sdhms/SemDeviceHealthManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;->this$0:Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;->this$0:Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->-$$Nest$fputmService(Lcom/samsung/android/sdhms/SemDeviceHealthManager;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    return-void
.end method
