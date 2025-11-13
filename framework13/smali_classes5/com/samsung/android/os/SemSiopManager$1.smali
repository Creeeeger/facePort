.class Lcom/samsung/android/os/SemSiopManager$1;
.super Ljava/lang/Object;
.source "SemSiopManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemSiopManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 1

    .line 373
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemSiopManager;->-$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    .line 374
    return-void
.end method
