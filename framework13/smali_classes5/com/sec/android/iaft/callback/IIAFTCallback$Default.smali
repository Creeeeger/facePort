.class public Lcom/sec/android/iaft/callback/IIAFTCallback$Default;
.super Ljava/lang/Object;
.source "IIAFTCallback.java"

# interfaces
.implements Lcom/sec/android/iaft/callback/IIAFTCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/callback/IIAFTCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist traceResult(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tid"    # I
    .param p3, "code"    # I
    .param p4, "freq"    # I
    .param p5, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
