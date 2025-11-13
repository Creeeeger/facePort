.class public Lcom/samsung/android/hardware/SemHardwareInterface;
.super Ljava/lang/Object;
.source "SemHardwareInterface.java"


# static fields
.field private static blacklist EPEN_SAVINGMODE_PATH:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/samsung/android/hardware/SemHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist setEPenSavingmode(I)Z
    .locals 1
    .param p0, "enable"    # I

    .line 69
    sget-object v0, Lcom/samsung/android/hardware/SemHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/hardware/SemHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static blacklist sysfsWrite(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 38
    const/4 v0, 0x0

    .line 42
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 46
    nop

    .line 48
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 49
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 58
    nop

    .line 59
    const/4 v1, 0x1

    return v1

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0

    .line 43
    :catch_1
    move-exception v2

    .line 44
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    return v1

    .line 51
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    goto :goto_1

    .line 54
    :catch_2
    move-exception v3

    .line 55
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_1
    return v1
.end method
