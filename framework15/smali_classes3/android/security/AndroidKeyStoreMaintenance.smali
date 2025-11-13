.class public Landroid/security/AndroidKeyStoreMaintenance;
.super Ljava/lang/Object;
.source "AndroidKeyStoreMaintenance.java"


# static fields
.field public static final blacklist INVALID_ARGUMENT:I = 0x14

.field public static final blacklist KEY_NOT_FOUND:I = 0x7

.field public static final blacklist PERMISSION_DENIED:I = 0x6

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreMaintenance"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearNamespace(IJ)I
    .locals 10

    const-string v1, "AndroidKeyStoreMaintenance"

    const/4 v8, -0x1

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->clearNamespace(IJ)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-nez p0, :cond_0

    long-to-int v0, p1

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :goto_0
    nop

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x4

    nop

    if-nez p0, :cond_2

    long-to-int v1, p1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_1
    move v9, v1

    invoke-static {v9}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    nop

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_3
    const/4 v1, 0x4

    return v1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "clearNamespace failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v8, v0, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p0, :cond_4

    long-to-int v1, p1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_2
    move v9, v1

    invoke-static {v9}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_5

    nop

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_5
    return v8

    :catchall_1
    move-exception v0

    move v8, v7

    :goto_3
    if-nez p0, :cond_6

    long-to-int v1, p1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_4
    move v9, v1

    invoke-static {v9}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_7

    nop

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    :cond_7
    throw v0
.end method

.method public static blacklist deleteAllKeys()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->deleteAllKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/security/KeyStoreException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v3, "Keystore error while trying to delete all keys."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    const-string v3, "Failure to connect to Keystore while trying to delete all keys."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static blacklist getAllAppUidsAffectedBySid(IJ)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->getAppUidsAffectedBySid(IJ)[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/security/KeyStoreException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v3, "Keystore error while trying to get apps affected by SID."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    const-string v3, "Failure to connect to Keystore while trying to get apps affected by SID."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static blacklist getService()Landroid/security/maintenance/IKeystoreMaintenance;
    .locals 1

    nop

    const-string v0, "android.security.maintenance"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist initUserSuperKeys(I[BZ)I
    .locals 3

    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->initUserSuperKeys(I[BZ)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "initUserSuperKeys failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I
    .locals 3

    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "migrateKeyNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserAdded(I)I
    .locals 3

    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserAdded(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "onUserAdded failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserLskfRemoved(I)I
    .locals 3

    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserLskfRemoved(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "onUserLskfRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserPasswordChanged(I[B)I
    .locals 3

    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserPasswordChanged(I[B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "onUserPasswordChanged failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserRemoved(I)I
    .locals 3

    const-string v0, "AndroidKeyStoreMaintenance"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserRemoved(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "onUserRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method
