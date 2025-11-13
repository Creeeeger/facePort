.class public Lcom/samsung/android/knox/SemIRCPCallback$Default;
.super Ljava/lang/Object;
.source "SemIRCPCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/SemIRCPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemIRCPCallback;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist onComplete(Ljava/util/List;II)V
    .locals 0
    .param p2, "destinationUserId"    # I
    .param p3, "successCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p1, "srcPathsOrig":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public greylist onDone(Ljava/lang/String;I)V
    .locals 0
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public greylist onFail(Ljava/lang/String;II)V
    .locals 0
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public greylist onProgress(Ljava/lang/String;II)V
    .locals 0
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .param p3, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
