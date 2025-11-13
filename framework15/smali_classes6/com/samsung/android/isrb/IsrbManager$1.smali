.class Lcom/samsung/android/isrb/IsrbManager$1;
.super Landroid/util/Singleton;
.source "IsrbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/isrb/IsrbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/samsung/android/isrb/IIsrbManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/samsung/android/isrb/IIsrbManager;
    .locals 2

    const-string v0, "isrb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/isrb/IIsrbManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/isrb/IsrbManager$1;->create()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    return-object v0
.end method
