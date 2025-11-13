.class public Lcom/samsung/android/smartface/ISmartFaceClient$Default;
.super Ljava/lang/Object;
.source "ISmartFaceClient.java"

# interfaces
.implements Lcom/samsung/android/smartface/ISmartFaceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/ISmartFaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onInfo(ILcom/samsung/android/smartface/FaceInfo;I)V
    .locals 0
    .param p1, "msg_type"    # I
    .param p2, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p3, "service_type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
