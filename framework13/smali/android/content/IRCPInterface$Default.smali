.class public Landroid/content/IRCPInterface$Default;
.super Ljava/lang/Object;
.source "IRCPInterface.java"

# interfaces
.implements Landroid/content/IRCPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRCPInterface;
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

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancel(J)V
    .locals 0
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist cancelCopyChunks(J)V
    .locals 0
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist copyFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .param p6, "mSourceClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isFileExist(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist moveFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .param p6, "mSourceClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 2
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 2
    .param p1, "requestApp"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist moveUnlimitedFiles(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist moveUnlimitedFiles2(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .param p5, "mSourceClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J
    .locals 2
    .param p1, "requestApp"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "fileCount"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const-wide/16 v0, 0x0

    return-wide v0
.end method
