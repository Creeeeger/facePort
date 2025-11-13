.class public Lcom/samsung/android/knox/EdmUtils;
.super Ljava/lang/Object;
.source "EdmUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "EnterpriseDeviceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getAPILevelForInternal()I
    .locals 2

    :try_start_0
    const-string v0, "36"

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 29
    :catch_0
    sget-object v0, Lcom/samsung/android/knox/EdmUtils;->TAG:Ljava/lang/String;

    const-string v1, "Failed parsing API level"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
