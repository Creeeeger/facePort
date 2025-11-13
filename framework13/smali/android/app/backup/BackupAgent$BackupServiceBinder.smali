.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor blacklist <init>(Landroid/app/backup/BackupAgent;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$BackupServiceBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method

.method private blacklist doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .locals 17
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    .local p7, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, ") threw"

    const-string/jumbo v6, "onRestore ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1137
    new-instance v9, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1140
    .local v9, "input":Landroid/app/backup/BackupDataInput;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1142
    .local v14, "ident":J
    const-wide/16 v12, 0x0

    :try_start_0
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1143
    if-eqz v4, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1153
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-wide v4, v12

    goto/16 :goto_6

    .line 1144
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1142
    :goto_0
    move-wide/from16 v10, p2

    move-object/from16 v16, v5

    move-wide v4, v12

    move-object/from16 v12, p4

    move-object v13, v0

    :try_start_3
    invoke-virtual/range {v8 .. v13}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1153
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1155
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1157
    :try_start_4
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1160
    goto :goto_1

    .line 1158
    :catch_0
    move-exception v0

    .line 1162
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 1163
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1164
    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1167
    :cond_1
    return-void

    .line 1148
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1145
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    move-wide v4, v12

    :goto_2
    move-object/from16 v8, v16

    goto :goto_5

    .line 1153
    :catchall_1
    move-exception v0

    move-wide v4, v12

    :goto_3
    move-object v6, v0

    goto :goto_6

    .line 1148
    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    move-wide v4, v12

    .line 1149
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v16

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    nop

    .end local v9    # "input":Landroid/app/backup/BackupDataInput;
    .end local v14    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "appVersionCode":J
    .end local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p5    # "token":I
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0

    .line 1145
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v9    # "input":Landroid/app/backup/BackupDataInput;
    .restart local v14    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "appVersionCode":J
    .restart local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p5    # "token":I
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v0

    move-object v8, v5

    move-wide v4, v12

    .line 1146
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v9    # "input":Landroid/app/backup/BackupDataInput;
    .end local v14    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "appVersionCode":J
    .end local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p5    # "token":I
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1153
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v9    # "input":Landroid/app/backup/BackupDataInput;
    .restart local v14    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "appVersionCode":J
    .restart local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p5    # "token":I
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    goto :goto_3

    :goto_6
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1155
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1157
    :try_start_6
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1160
    goto :goto_7

    .line 1158
    :catch_6
    move-exception v0

    .line 1162
    :goto_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1163
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1164
    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1166
    :cond_2
    throw v6
.end method


# virtual methods
.method public blacklist doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .locals 17
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "quotaBytes"    # J
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupCallback;
    .param p7, "transportFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    const-string v3, ") threw"

    const-string/jumbo v4, "onBackup ("

    const-string v5, "BackupServiceBinder"

    new-instance v0, Landroid/app/backup/BackupDataOutput;

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-wide/from16 v7, p4

    move/from16 v9, p7

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    move-object v6, v0

    .line 1078
    .local v6, "output":Landroid/app/backup/BackupDataOutput;
    const-wide/16 v10, -0x1

    .line 1081
    .local v10, "result":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1083
    .local v12, "ident":J
    :try_start_0
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :try_start_1
    invoke-virtual {v0, v14, v6, v15}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    const-wide/16 v3, 0x0

    .line 1095
    .end local v10    # "result":J
    .local v3, "result":J
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1097
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    :try_start_2
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1102
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1105
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 1106
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1107
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1108
    invoke-static/range {p3 .. p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1111
    :cond_0
    return-void

    .line 1095
    .end local v3    # "result":J
    .restart local v10    # "result":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1088
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1085
    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_3

    .line 1095
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :goto_1
    move-object v3, v0

    move-object/from16 v16, v6

    goto :goto_4

    .line 1088
    :catch_3
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    .line 1089
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_2
    move-object/from16 v16, v6

    .end local v6    # "output":Landroid/app/backup/BackupDataOutput;
    .local v16, "output":Landroid/app/backup/BackupDataOutput;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    nop

    .end local v10    # "result":J
    .end local v12    # "ident":J
    .end local v16    # "output":Landroid/app/backup/BackupDataOutput;
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "quotaBytes":J
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .end local p7    # "transportFlags":I
    throw v0

    .line 1085
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "output":Landroid/app/backup/BackupDataOutput;
    .restart local v10    # "result":J
    .restart local v12    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "quotaBytes":J
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .restart local p7    # "transportFlags":I
    :catch_4
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    .line 1086
    .end local v6    # "output":Landroid/app/backup/BackupDataOutput;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v16    # "output":Landroid/app/backup/BackupDataOutput;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v10    # "result":J
    .end local v12    # "ident":J
    .end local v16    # "output":Landroid/app/backup/BackupDataOutput;
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "quotaBytes":J
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .end local p7    # "transportFlags":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1095
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v10    # "result":J
    .restart local v12    # "ident":J
    .restart local v16    # "output":Landroid/app/backup/BackupDataOutput;
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "quotaBytes":J
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .restart local p7    # "transportFlags":I
    :catchall_2
    move-exception v0

    move-object v3, v0

    :goto_4
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1097
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    :try_start_4
    invoke-interface {v2, v10, v11}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1102
    goto :goto_5

    .line 1100
    :catch_5
    move-exception v0

    .line 1105
    :goto_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 1106
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1107
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1108
    invoke-static/range {p3 .. p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1110
    :cond_1
    throw v3
.end method

.method public greylist-max-o doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .locals 16
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quotaBytes"    # J
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p6, "transportFlags"    # I

    .line 1176
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, ") threw"

    const-string v5, "Unable to finalize backup stream!"

    const-string/jumbo v6, "onFullBackup ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1181
    .local v8, "ident":J
    const/4 v12, 0x4

    :try_start_0
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v13, Landroid/app/backup/FullBackupDataOutput;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :try_start_1
    invoke-direct {v13, v14, v10, v11, v15}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    invoke-virtual {v0, v13}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1196
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1197
    .local v0, "out":Ljava/io/FileOutputStream;
    new-array v4, v12, [B

    .line 1198
    .local v4, "buf":[B
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1201
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "buf":[B
    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    :try_start_3
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1208
    goto :goto_1

    .line 1206
    :catch_1
    move-exception v0

    .line 1210
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 1211
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1214
    :cond_0
    return-void

    .line 1191
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1186
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1183
    :catch_3
    move-exception v0

    goto :goto_4

    .line 1191
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_2
    move-object v4, v0

    goto :goto_5

    .line 1186
    :catch_4
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    .line 1187
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_3
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    nop

    .end local v8    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "quotaBytes":J
    .end local p4    # "token":I
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p6    # "transportFlags":I
    throw v0

    .line 1183
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v8    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "quotaBytes":J
    .restart local p4    # "token":I
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p6    # "transportFlags":I
    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    .line 1184
    .local v0, "ex":Ljava/io/IOException;
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "quotaBytes":J
    .end local p4    # "token":I
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p6    # "transportFlags":I
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1191
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v8    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "quotaBytes":J
    .restart local p4    # "token":I
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p6    # "transportFlags":I
    :goto_5
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1196
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1197
    .local v0, "out":Ljava/io/FileOutputStream;
    new-array v6, v12, [B

    .line 1198
    .local v6, "buf":[B
    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1201
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "buf":[B
    goto :goto_6

    .line 1199
    :catch_6
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    :try_start_6
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v6}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1208
    goto :goto_7

    .line 1206
    :catch_7
    move-exception v0

    .line 1210
    :goto_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_1

    .line 1211
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1213
    :cond_1
    throw v4
.end method

.method public blacklist doFullBackupPath(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I[Ljava/lang/String;)V
    .locals 16
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quotaBytes"    # J
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p6, "transportFlags"    # I
    .param p7, "path"    # [Ljava/lang/String;

    .line 1223
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string v5, ") threw"

    const-string v6, "Unable to finalize backup stream!"

    const-string/jumbo v7, "onFullBackup ("

    const-string v8, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1226
    if-eqz v4, :cond_0

    .line 1227
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    iput-object v4, v0, Landroid/app/backup/BackupAgent;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 1231
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1233
    .local v9, "ident":J
    :try_start_0
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v14, Landroid/app/backup/FullBackupDataOutput;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p1

    move-wide/from16 v11, p2

    move/from16 v13, p6

    :try_start_1
    invoke-direct {v14, v15, v11, v12, v13}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    invoke-virtual {v0, v14}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1248
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1249
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 1250
    .local v5, "buf":[B
    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1253
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "buf":[B
    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    :try_start_3
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v6}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1260
    goto :goto_1

    .line 1258
    :catch_1
    move-exception v0

    .line 1262
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_1

    .line 1263
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1266
    :cond_1
    return-void

    .line 1243
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1238
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1235
    :catch_3
    move-exception v0

    goto :goto_4

    .line 1243
    :catchall_1
    move-exception v0

    move-object/from16 v15, p1

    move-wide/from16 v11, p2

    move/from16 v13, p6

    :goto_2
    move-object v5, v0

    goto :goto_5

    .line 1238
    :catch_4
    move-exception v0

    move-object/from16 v15, p1

    move-wide/from16 v11, p2

    move/from16 v13, p6

    .line 1239
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_3
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    nop

    .end local v9    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "quotaBytes":J
    .end local p4    # "token":I
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p6    # "transportFlags":I
    .end local p7    # "path":[Ljava/lang/String;
    throw v0

    .line 1235
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v9    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "quotaBytes":J
    .restart local p4    # "token":I
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p6    # "transportFlags":I
    .restart local p7    # "path":[Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v15, p1

    move-wide/from16 v11, p2

    move/from16 v13, p6

    .line 1236
    .local v0, "ex":Ljava/io/IOException;
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v9    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "quotaBytes":J
    .end local p4    # "token":I
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p6    # "transportFlags":I
    .end local p7    # "path":[Ljava/lang/String;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1243
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v9    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "quotaBytes":J
    .restart local p4    # "token":I
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p6    # "transportFlags":I
    .restart local p7    # "path":[Ljava/lang/String;
    :goto_5
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1248
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1249
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 1250
    .local v7, "buf":[B
    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1253
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "buf":[B
    goto :goto_6

    .line 1251
    :catch_6
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    :try_start_6
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v6, 0x0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1260
    goto :goto_7

    .line 1258
    :catch_7
    move-exception v0

    .line 1262
    :goto_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_2

    .line 1263
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1265
    :cond_2
    throw v5
.end method

.method public greylist-max-o doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .locals 8
    .param p1, "quotaBytes"    # J
    .param p3, "token"    # I
    .param p4, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p5, "transportFlags"    # I

    .line 1270
    const-string v0, ") threw"

    const-string/jumbo v1, "onFullBackup[M] ("

    const-string v2, "BackupServiceBinder"

    new-instance v3, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v3, p1, p2, p5}, Landroid/app/backup/FullBackupDataOutput;-><init>(JI)V

    .line 1273
    .local v3, "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1278
    .local v4, "ident":J
    :try_start_0
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6, v3}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1288
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    .line 1289
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v1

    .line 1288
    invoke-interface {p4, v0, p3, v1, v2}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1292
    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1293
    nop

    .line 1294
    :goto_0
    return-void

    .line 1286
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1282
    :catch_1
    move-exception v6

    .line 1283
    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1284
    nop

    .end local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .end local v4    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "quotaBytes":J
    .end local p3    # "token":I
    .end local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p5    # "transportFlags":I
    throw v6

    .line 1279
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .restart local v4    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "quotaBytes":J
    .restart local p3    # "token":I
    .restart local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p5    # "transportFlags":I
    :catch_2
    move-exception v6

    .line 1280
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .end local v4    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "quotaBytes":J
    .end local p3    # "token":I
    .end local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p5    # "transportFlags":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1286
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .restart local v4    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "quotaBytes":J
    .restart local p3    # "token":I
    .restart local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p5    # "transportFlags":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1288
    :try_start_3
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v1}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v1

    .line 1289
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v6

    .line 1288
    invoke-interface {p4, v1, p3, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1292
    goto :goto_2

    .line 1290
    :catch_3
    move-exception v1

    .line 1293
    :goto_2
    throw v0
.end method

.method public blacklist doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .locals 8
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupCallback;

    .line 1356
    const-wide/16 v0, -0x1

    .line 1359
    .local v0, "result":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1361
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    const-wide/16 v0, 0x0

    .line 1368
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1369
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    :try_start_1
    invoke-interface {p5, v0, v1}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1375
    goto :goto_0

    .line 1373
    :catch_0
    move-exception v4

    .line 1376
    nop

    .line 1377
    :goto_0
    return-void

    .line 1368
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1363
    :catch_1
    move-exception v4

    .line 1364
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onQuotaExceeded("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1366
    nop

    .end local v0    # "result":J
    .end local v2    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "backupDataBytes":J
    .end local p3    # "quotaBytes":J
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1368
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "result":J
    .restart local v2    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "backupDataBytes":J
    .restart local p3    # "quotaBytes":J
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    :goto_1
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1369
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    :try_start_3
    invoke-interface {p5, v0, v1}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1375
    goto :goto_2

    .line 1373
    :catch_2
    move-exception v5

    .line 1376
    :goto_2
    throw v4
.end method

.method public greylist-max-o doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 1119
    return-void
.end method

.method public greylist-max-o doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 19
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1300
    move-object/from16 v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1302
    .local v4, "ident":J
    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    invoke-virtual/range {v8 .. v18}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1310
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1312
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1314
    :try_start_1
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1317
    goto :goto_0

    .line 1315
    :catch_0
    move-exception v0

    .line 1319
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_0

    .line 1320
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1323
    :cond_0
    return-void

    .line 1308
    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_1

    .line 1303
    :catch_1
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRestoreFile ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "size":J
    .end local p4    # "type":I
    .end local p5    # "domain":Ljava/lang/String;
    .end local p6    # "path":Ljava/lang/String;
    .end local p7    # "mode":J
    .end local p9    # "mtime":J
    .end local p11    # "token":I
    .end local p12    # "callbackBinder":Landroid/app/backup/IBackupManager;
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1308
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "size":J
    .restart local p4    # "type":I
    .restart local p5    # "domain":Ljava/lang/String;
    .restart local p6    # "path":Ljava/lang/String;
    .restart local p7    # "mode":J
    .restart local p9    # "mtime":J
    .restart local p11    # "token":I
    .restart local p12    # "callbackBinder":Landroid/app/backup/IBackupManager;
    :goto_1
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1310
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1312
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1314
    :try_start_3
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1317
    goto :goto_2

    .line 1315
    :catch_2
    move-exception v0

    .line 1319
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_1

    .line 1320
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1322
    :cond_1
    throw v8
.end method

.method public greylist-max-o doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .line 1327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1329
    .local v0, "ident":J
    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    :try_start_1
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v4

    invoke-interface {p2, v4, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1342
    goto :goto_0

    .line 1340
    :catch_0
    move-exception v2

    .line 1343
    nop

    .line 1344
    :goto_0
    return-void

    .line 1335
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1330
    :catch_1
    move-exception v4

    .line 1331
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreFinished ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1332
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "token":I
    .end local p2    # "callbackBinder":Landroid/app/backup/IBackupManager;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1335
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "token":I
    .restart local p2    # "callbackBinder":Landroid/app/backup/IBackupManager;
    :goto_1
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    :try_start_3
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v5

    invoke-interface {p2, v5, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1342
    goto :goto_2

    .line 1340
    :catch_2
    move-exception v2

    .line 1343
    :goto_2
    throw v4
.end method

.method public blacklist doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .locals 0
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    .local p7, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 1126
    return-void
.end method

.method public greylist-max-o fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 1348
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1349
    return-void
.end method
