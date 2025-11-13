.class public Lcom/sec/ims/extensions/ServiceStateExt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I = 0x3

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I = 0x2

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I = 0x1

.field public static final SNAPSHOT_STATUS_ACTIVATED:I

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I

.field private static final TAG:Ljava/lang/String; = "ServiceStateExt"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SNAPSHOT_STATUS_DEACTIVATED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    const-string v0, "SNAPSHOT_STATUS_ACTIVATED"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIntField(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/ims/extensions/ServiceStateExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
