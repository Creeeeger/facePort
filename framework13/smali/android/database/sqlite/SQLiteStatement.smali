.class public final Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor greylist-max-r <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist execute()V
    .locals 5

    .line 45
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteSession;->execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 53
    nop

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 50
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 53
    throw v0
.end method

.method public whitelist executeInsert()J
    .locals 5

    .line 87
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteSession;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 89
    return-wide v0

    .line 95
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 93
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 96
    throw v0
.end method

.method public whitelist executeUpdateDelete()I
    .locals 5

    .line 65
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteSession;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 67
    return v0

    .line 73
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 71
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 74
    throw v0
.end method

.method public whitelist simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 169
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteSession;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 171
    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 175
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 178
    throw v0
.end method

.method public blacklist simpleQueryForIntegrityCheck()Ljava/lang/String;
    .locals 5

    .line 146
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 149
    const/4 v0, 0x6

    .line 151
    .local v0, "flag":I
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 151
    return-object v1

    .line 156
    .end local v0    # "flag":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    const-string v1, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 154
    return-object v1

    .line 156
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 157
    throw v0
.end method

.method public whitelist simpleQueryForLong()J
    .locals 5

    .line 108
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteSession;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 110
    return-wide v0

    .line 116
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 114
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 117
    throw v0
.end method

.method public whitelist simpleQueryForString()Ljava/lang/String;
    .locals 5

    .line 129
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 131
    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 135
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 138
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteProgram: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
