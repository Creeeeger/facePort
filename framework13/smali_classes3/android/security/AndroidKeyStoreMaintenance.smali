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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearNamespace(IJ)I
    .locals 14
    .param p0, "domain"    # I
    .param p1, "namespace"    # J

    .line 118
    move v8, p0

    move-wide v9, p1

    const-string v1, "AndroidKeyStoreMaintenance"

    const/4 v11, 0x1

    .line 121
    .local v11, "errorCode":I
    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0, p0, v9, v10}, Landroid/security/maintenance/IKeystoreMaintenance;->clearNamespace(IJ)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v0, 0x0

    .line 140
    if-nez v8, :cond_0

    long-to-int v1, v9

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_0
    move v12, v1

    .line 142
    .local v12, "userId":I
    invoke-static {v12}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 144
    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    move v7, v11

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 146
    .local v1, "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v1, v12}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    .line 147
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 122
    .end local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .end local v12    # "userId":I
    :cond_1
    return v0

    .line 140
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const/4 v11, 0x4

    .line 134
    const/4 v12, 0x4

    .line 140
    if-nez v8, :cond_2

    long-to-int v1, v9

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_1

    .line 141
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_1
    move v13, v1

    .line 142
    .local v13, "userId":I
    invoke-static {v13}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 144
    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    move v7, v11

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 146
    .restart local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v1, v13}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    .line 147
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 134
    .end local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .end local v13    # "userId":I
    :cond_3
    return v12

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :try_start_2
    const-string v2, "clearNamespace failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v11    # "errorCode":I
    .local v7, "errorCode":I
    :try_start_3
    iget v11, v0, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    if-nez v8, :cond_4

    long-to-int v1, v9

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_2

    .line 141
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_2
    move v12, v1

    .line 142
    .restart local v12    # "userId":I
    invoke-static {v12}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 144
    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 146
    .restart local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v1, v12}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    .line 147
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 128
    .end local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .end local v12    # "userId":I
    :cond_5
    return v11

    .line 140
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catchall_1
    move-exception v0

    move v11, v7

    .end local v7    # "errorCode":I
    .restart local v11    # "errorCode":I
    :goto_3
    if-nez v8, :cond_6

    long-to-int v1, v9

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_4

    .line 141
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_4
    move v12, v1

    .line 142
    .restart local v12    # "userId":I
    invoke-static {v12}, Landroid/security/KeyStoreAuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 144
    const-string v6, "AndroidKeyStoreMaintenance"

    move-wide v2, p1

    move v4, p0

    move v7, v11

    invoke-static/range {v1 .. v7}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v1

    .line 146
    .restart local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v1, v12}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setUserId(I)V

    .line 147
    invoke-static {v1}, Landroid/security/KeyStoreAuditLog;->auditLogPrivilegedAsUser(Landroid/security/KeyStoreAuditLog$AuditLogParams;)V

    .line 149
    .end local v1    # "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .end local v12    # "userId":I
    :cond_7
    throw v0
.end method

.method private static blacklist getService()Landroid/security/maintenance/IKeystoreMaintenance;
    .locals 1

    .line 46
    nop

    .line 47
    const-string v0, "android.security.maintenance"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getState(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 161
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->getState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v0, 0x4

    return v0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "getState failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I
    .locals 3
    .param p0, "source"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "destination"    # Landroid/system/keystore2/KeyDescriptor;

    .line 204
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v0, 0x4

    return v0

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 207
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "migrateKeyNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onDeviceOffBody()V
    .locals 3

    .line 176
    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->onDeviceOffBody()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AndroidKeyStoreMaintenance"

    const-string v2, "Error while reporting device off body event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static blacklist onUserAdded(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 59
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserAdded(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v0, 0x4

    return v0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserAdded failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserPasswordChanged(I[B)I
    .locals 3
    .param p0, "userId"    # I
    .param p1, "password"    # [B

    .line 101
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserPasswordChanged(I[B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v0, 0x4

    return v0

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserPasswordChanged failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserRemoved(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 79
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserRemoved(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v0, 0x0

    return v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v0, 0x4

    return v0

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method
