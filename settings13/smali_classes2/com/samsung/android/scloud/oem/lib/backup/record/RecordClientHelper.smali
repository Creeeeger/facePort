.class public Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;
.super Ljava/lang/Object;
.source "RecordClientHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RecordClientHelper"


# instance fields
.field private context:Landroid/content/Context;

.field private jsonWriter:Landroid/util/JsonWriter;

.field private listener:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;

.field private sourceKey:Ljava/lang/String;

.field private totalCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sourceKey",
            "jsonWriter"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->listener:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->sourceKey:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;JLcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sourceKey",
            "jsonWriter",
            "totalCount",
            "listener"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    .line 43
    iput-object p6, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->listener:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;

    .line 44
    iput-wide p4, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->totalCount:J

    .line 45
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->sourceKey:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected open()V
    .locals 3

    .line 60
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->sourceKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 3

    .line 71
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->sourceKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 76
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
