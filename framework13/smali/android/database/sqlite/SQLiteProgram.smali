.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final greylist-max-r mBindArgs:[Ljava/lang/Object;

.field private final greylist-max-o mColumnNames:[Ljava/lang/String;

.field private final greylist-max-o mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final greylist-max-o mNumParameters:I

.field private final greylist-max-o mReadOnly:Z

.field private final greylist mSql:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;
    .param p4, "cancellationSignalForPrepare"    # Landroid/os/CancellationSignal;

    .line 45
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 49
    invoke-static {v0}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "n":I
    const/4 v2, 0x7

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 60
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 54
    :pswitch_0
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 55
    sget-object v4, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 56
    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    .line 57
    goto :goto_3

    .line 60
    :cond_0
    move v4, v3

    .line 62
    .local v4, "assumeReadOnly":Z
    :goto_0
    :try_start_0
    new-instance v5, Landroid/database/sqlite/SQLiteStatementInfo;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteStatementInfo;-><init>()V

    .line 63
    .local v5, "info":Landroid/database/sqlite/SQLiteStatementInfo;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v6

    .line 64
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v7

    .line 63
    invoke-virtual {v6, v0, v7, p4, v5}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 66
    if-eq v1, v2, :cond_2

    const/16 v6, 0x8

    if-ne v1, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v3

    :goto_2
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 67
    iget-object v6, v5, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 68
    iget v6, v5, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput v6, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v5    # "info":Landroid/database/sqlite/SQLiteStatementInfo;
    nop

    .line 77
    .end local v4    # "assumeReadOnly":Z
    :goto_3
    if-eqz p3, :cond_4

    array-length v4, p3

    iget v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt v4, v5, :cond_3

    goto :goto_4

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bind arguments.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arguments were provided but the statement needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arguments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    :goto_4
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz v4, :cond_5

    .line 84
    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 85
    if-eqz p3, :cond_6

    .line 86
    array-length v5, p3

    invoke-static {p3, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 89
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 92
    :cond_6
    :goto_5
    if-ne v1, v2, :cond_7

    .line 93
    invoke-static {p1, v0, p4}, Landroid/database/sqlite/SQLitePragma;->checkAndSetSpecialPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 95
    :cond_7
    return-void

    .line 70
    .restart local v4    # "assumeReadOnly":Z
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->onCorruption(I)V

    .line 72
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o bind(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 237
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind argument at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the index is out of range.  The statement has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .line 218
    if-eqz p1, :cond_0

    .line 219
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 220
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 219
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist bindBlob(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 197
    if-eqz p2, :cond_0

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 201
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindDouble(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 172
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public whitelist bindLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 161
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public whitelist bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 151
    return-void
.end method

.method public whitelist bindString(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 183
    if-eqz p2, :cond_0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 187
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearBindings()V
    .locals 2

    .line 207
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    :cond_0
    return-void
.end method

.method final greylist-max-o getBindArgs()[Ljava/lang/Object;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final greylist-max-o getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final greylist-max-o getConnectionFlags()I
    .locals 2

    .line 120
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final greylist-max-o getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final greylist-max-o getSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o getSql()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist onAllReferencesReleased()V
    .locals 0

    .line 227
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 228
    return-void
.end method

.method protected final greylist-max-o onCorruption()V
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 126
    return-void
.end method

.method protected final blacklist onCorruption(I)V
    .locals 1
    .param p1, "errCode"    # I

    .line 131
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 132
    return-void
.end method
