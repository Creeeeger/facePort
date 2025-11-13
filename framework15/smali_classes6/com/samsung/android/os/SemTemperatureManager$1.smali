.class Lcom/samsung/android/os/SemTemperatureManager$1;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->-$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    return-void
.end method
