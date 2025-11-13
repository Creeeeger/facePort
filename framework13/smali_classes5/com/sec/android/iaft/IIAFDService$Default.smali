.class public Lcom/sec/android/iaft/IIAFDService$Default;
.super Ljava/lang/Object;
.source "IIAFDService.java"

# interfaces
.implements Lcom/sec/android/iaft/IIAFDService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IIAFDService;
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
.method public blacklist IAFDParse(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist IAFDShow(IILjava/lang/String;)V
    .locals 0
    .param p1, "puserId"    # I
    .param p2, "appuid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
