.class final Lcom/samsung/android/authenticator/AuthenticatorService;
.super Ljava/lang/Object;
.source "AuthenticatorService.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "SemAuthnrService"

.field private static final blacklist TAG:Ljava/lang/String; = "AS"

.field private static blacklist sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static blacklist checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 268
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 271
    return-object p0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not found service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist deleteFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 181
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->deleteFile(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 185
    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 186
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist getDrkKeyHandle()[B
    .locals 5

    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 152
    .local v0, "result":[B
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 155
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getDrkKeyHandle()[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 159
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrkKeyHandle failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 160
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method static blacklist getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 194
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 198
    goto :goto_0

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFiles failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 199
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method static blacklist getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 259
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 263
    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMatchedFilePaths failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 264
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private static blacklist getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "SemAuthnrService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v0
.end method

.method static blacklist getVersion()I
    .locals 5

    .line 47
    const/4 v0, -0x1

    .line 48
    .local v0, "result":I
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 51
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getVersion()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 55
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 56
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist getWrappedObject([B)[B
    .locals 5
    .param p0, "challenge"    # [B

    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 113
    .local v0, "result":[B
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 116
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getWrappedObject([B)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 120
    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWrappedObject failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 121
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method static blacklist initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "offset"    # J
    .param p3, "len"    # J

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 64
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 68
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 69
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist initializeDrk()Z
    .locals 5

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 129
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeDrk()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 133
    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeDrk failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 134
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist initializePreloadedTa(I)Z
    .locals 6
    .param p0, "trustedAppType"    # I

    .line 279
    const-string v0, "AS"

    const-string/jumbo v1, "static boolean initializePreloadedTa(int trustedAppType)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 284
    .local v2, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializePreloadedTa(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 288
    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeWithPreloadedTap failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 289
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method static blacklist initializeWithPreloadedTa()Z
    .locals 5

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 207
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeWithPreloadedTa()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 211
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeWithPreloadedTa failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 212
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist process([B)[B
    .locals 5
    .param p0, "command"    # [B

    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 87
    .local v0, "result":[B
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 90
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->process([B)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 94
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 95
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method static blacklist processPreloadedTa(I[B)[B
    .locals 6
    .param p0, "trustedAppType"    # I
    .param p1, "command"    # [B

    .line 307
    const-string v0, "AS"

    const-string/jumbo v1, "static byte[] processPreloadedTa(int trustedAppType, byte[] command)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 309
    .local v1, "result":[B
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 312
    .local v2, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processPreloadedTa(I[B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 316
    goto :goto_0

    .line 313
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processWithPreloadedTap failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 317
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1
.end method

.method static blacklist processWithPreloadedTa([BLjava/lang/String;)[B
    .locals 5
    .param p0, "command"    # [B
    .param p1, "appId"    # Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 230
    .local v0, "result":[B
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 233
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 237
    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processWithPreloadedTa failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 238
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method static blacklist readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 242
    const-string v0, ""

    .line 243
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 246
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 250
    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFile failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 251
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method static blacklist setChallenge([B)Z
    .locals 5
    .param p0, "challenge"    # [B

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 103
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->setChallenge([B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 107
    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setChallenge failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 108
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist terminate()Z
    .locals 5

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 77
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminate()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminate failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 82
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist terminateDrk()Z
    .locals 5

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 142
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateDrk()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminateDrk failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 147
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist terminatePreloadedTa(I)Z
    .locals 6
    .param p0, "trustedAppType"    # I

    .line 293
    const-string v0, "AS"

    const-string/jumbo v1, "static boolean terminatePreloadedTa(int trustedAppType)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 298
    .local v2, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminatePreloadedTa(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 302
    goto :goto_0

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminateWithPreloadedTap failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 303
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method static blacklist terminateWithPreloadedTa()Z
    .locals 5

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 220
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateWithPreloadedTa()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 224
    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminateWithPreloadedTa failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 225
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method static blacklist writeFile([BLjava/lang/String;)Z
    .locals 5
    .param p0, "data"    # [B
    .param p1, "path"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    .line 168
    .local v1, "service":Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->writeFile([BLjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 172
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS"

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 173
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method
