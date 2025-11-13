.class public Lcom/sec/android/vzwswlibrary/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getOneUIVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 117
    invoke-static {p0}, Lcom/sec/android/vzwswlibrary/util/Utils;->isSemAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 118
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x15f90

    sub-int/2addr p0, v0

    .line 120
    div-int/lit16 v0, p0, 0x2710

    .line 121
    rem-int/lit16 p0, p0, 0x2710

    div-int/lit8 p0, p0, 0x64

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "1.0"

    :goto_0
    return-object p0
.end method

.method public static isSemAvailable(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.samsung_experience_mobile_lite"

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
