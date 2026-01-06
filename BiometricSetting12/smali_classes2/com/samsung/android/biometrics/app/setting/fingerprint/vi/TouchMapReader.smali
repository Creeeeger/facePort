.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;
.super Ljava/lang/Object;
.source "TouchMapReader.java"


# static fields
.field private static final DISPLAY_INFO_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/fod_info"

.field private static final TAG:Ljava/lang/String; = "BSS_TouchMapReader"

.field private static final TOUCH_MAP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/fod_pos"


# instance fields
.field public displayHCellMax:I

.field public displayHCellSize:I

.field public displayVCellMax:I

.field public displayVCellSize:I

.field private mDisplayInfoBufferSize:I

.field private mIsTouchInfoUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mIsTouchInfoUpdated:Z

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mDisplayInfoBufferSize:I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->readDisplayInformation()V

    return-void
.end method

.method private readDisplayInformation()V
    .locals 10

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mIsTouchInfoUpdated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mIsTouchInfoUpdated:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/fod_info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    const-string v2, "BSS_TouchMapReader"

    if-eqz v1, :cond_7

    array-length v3, v1

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const-string v6, "Wrong information("

    const/4 v7, 0x3

    const-string v8, ")"

    const/4 v9, 0x5

    if-eq v5, v7, :cond_2

    array-length v5, v4

    if-eq v5, v9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    const/4 v0, 0x2

    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mDisplayInfoBufferSize:I

    array-length v0, v4

    const/4 v5, -0x1

    if-ne v0, v9, :cond_3

    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    array-length v0, v4

    if-ne v0, v9, :cond_4

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_4
    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    if-gtz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid display info ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_1
    const-string v0, "No display information"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public readTouchMapFromFile()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/fod_pos"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mDisplayInfoBufferSize:I

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw data has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BSS_TouchMapReader"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public readTouchMatrix(Ljava/lang/String;)[[I
    .locals 13

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->readTouchMapFromFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_7

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    if-lez v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v5, 0x0

    aput v2, v3, v5

    const-class v6, I

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    add-int/lit8 v9, v8, 0x2

    :try_start_0
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const/4 v10, 0x0

    move v9, v10

    :goto_2
    const/4 v10, 0x0

    :goto_3
    const/16 v11, 0x8

    if-ge v10, v11, :cond_5

    aget-object v11, v3, v7

    shr-int v12, v9, v10

    and-int/2addr v12, v4

    if-ne v12, v4, :cond_2

    move v12, v4

    goto :goto_4

    :cond_2
    move v12, v5

    :goto_4
    aput v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v0, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v2, :cond_3

    return-object v3

    :cond_3
    const/4 v6, 0x0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid data("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BSS_TouchMapReader"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    :goto_5
    return-object v1
.end method
