.class Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;
.super Ljava/lang/Object;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->provisionDeviceID(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutputConverter"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->this$1:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkNonZero(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static blacklist getLengthIfNotNull(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static blacklist reprNonZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "(unknown)"

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->checkNonZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(non-zero)"

    goto :goto_0

    :cond_1
    const-string v0, "(zero)"

    :goto_0
    return-object v0
.end method
