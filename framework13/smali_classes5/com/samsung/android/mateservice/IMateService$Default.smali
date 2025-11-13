.class public Lcom/samsung/android/mateservice/IMateService$Default;
.super Ljava/lang/Object;
.source "IMateService.java"

# interfaces
.implements Lcom/samsung/android/mateservice/IMateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/IMateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method
