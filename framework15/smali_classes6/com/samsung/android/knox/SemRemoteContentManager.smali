.class public Lcom/samsung/android/knox/SemRemoteContentManager;
.super Ljava/lang/Object;
.source "SemRemoteContentManager.java"


# static fields
.field public static final greylist ERROR:I = -0x14d

.field private static final greylist TAG:Ljava/lang/String; = "SemRemoteContentManager"


# instance fields
.field greylist mService:Lcom/samsung/android/knox/ISemRemoteContentManager;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    return-void
.end method


# virtual methods
.method public greylist cancelCopyChunks(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->cancelCopyChunks(J)V

    :cond_0
    return-void
.end method

.method public greylist copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    move v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, -0x14d

    return v1
.end method

.method public greylist copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile: srcContainerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " srcFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destContainerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemRemoteContentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist deleteFile(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public greylist getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public greylist getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public greylist getRCPInterface()Landroid/content/IRCPInterface;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemRemoteContentManager"

    const-string v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist isFileExist(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist moveFiles(ILandroid/net/Uri;II)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SemRemoteContentManager"

    const-wide/16 v1, -0x1

    if-nez p2, :cond_0

    const-string v3, "moveFiles uri is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    if-gez p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveFiles total fileCount is smaller than zero : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveUnlimitedFiles(ILandroid/net/Uri;II)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method public whitelist moveFiles(ILjava/util/List;Ljava/util/List;I)J
    .locals 5
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

    const-string v0, "SemRemoteContentManager"

    const-wide/16 v1, -0x1

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid App Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_4

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v0

    return-wide v0

    :cond_3
    return-wide v1

    :cond_4
    :goto_0
    const-string v3, "invalid destFilePaths"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_5
    :goto_1
    const-string v3, "invalid srcFilePaths"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public greylist registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .locals 3

    const-string v0, "SemRemoteContentManager"

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRCPInterface(): My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
