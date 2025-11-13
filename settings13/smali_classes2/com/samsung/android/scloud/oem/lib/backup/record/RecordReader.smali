.class public Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;
.super Ljava/lang/Object;
.source "RecordReader.java"


# instance fields
.field private jsonReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonReader;",
            ">;"
        }
    .end annotation
.end field

.field private location:I

.field private reader:Landroid/util/JsonReader;

.field private size:I

.field private final sourceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "readers",
            "sourceKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/JsonReader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    .line 30
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->sourceKey:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    .line 32
    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    .line 34
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    iget p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/JsonReader;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
