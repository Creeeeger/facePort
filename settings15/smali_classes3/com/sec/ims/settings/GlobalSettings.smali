.class public Lcom/sec/ims/settings/GlobalSettings;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOG_TAG:Ljava/lang/String; = "GlobalSettings"

.field public static final NAME:Ljava/lang/String; = "mnoname"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field private static mPhoneId:I


# instance fields
.field private mId:I

.field private mName:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/GlobalSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/ims/settings/GlobalSettings;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/settings/GlobalSettings;->mValues:Landroid/content/ContentValues;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_id"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mId:I

    const-string v0, "mnoname"

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mName:Ljava/lang/String;

    const-string v0, "network"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mNetwork:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/settings/GlobalSettings;->mNetwork:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/GlobalSettings;-><init>(Landroid/content/ContentValues;)V

    sput p2, Lcom/sec/ims/settings/GlobalSettings;->mPhoneId:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/sec/ims/settings/GlobalSettings;->mPhoneId:I

    invoke-static {p0, v0}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlobalSettings["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/sec/ims/settings/GlobalSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "simslot"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstance, uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "GlobalSettings"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    new-instance p0, Lcom/sec/ims/settings/GlobalSettings;

    invoke-direct {p0, v0, p1}, Lcom/sec/ims/settings/GlobalSettings;-><init>(Landroid/content/ContentValues;I)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "getInstance, cursor is invalid"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :goto_1
    if-eqz p0, :cond_4

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
.end method

.method private getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    return-object p0
.end method

.method private getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/settings/GlobalSettings;->mId:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/GlobalSettings;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/GlobalSettings;->mNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/settings/GlobalSettings;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method
