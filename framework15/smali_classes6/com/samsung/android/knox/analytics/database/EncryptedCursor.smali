.class Lcom/samsung/android/knox/analytics/database/EncryptedCursor;
.super Landroid/database/AbstractCursor;
.source "EncryptedCursor.java"


# static fields
.field private static blacklist INITIAL_VALUE:I


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field blacklist mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

.field final blacklist mDatabaseCursor:Landroid/database/Cursor;

.field final blacklist mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

.field private blacklist mSyntheticRowId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, -0x63

    sput v0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    sget v0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    iput v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    return-void
.end method

.method private blacklist useLegacyKey()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v1, "useLegacyKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    sget v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getSyntheticRowId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v1, "useLegacyKey(): There is no marked event ID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v3, "id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public whitelist getBlob(I)[B
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBlob("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist getDouble(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v2, "bulk"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBulk([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->useLegacyKey()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decrypt([BZ)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v3, "getString(): UnsupportedEncodingException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v3, "getString(): GeneralSecurityException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v3, "getString(): InvalidKeyException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v2, "getString(): null data."

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventsUpToSyntheticId()V

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): returning string for encrypted data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public whitelist isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onMove(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
