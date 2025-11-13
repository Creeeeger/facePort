.class public Lcom/sec/ims/extensions/Extensions$Settings$Global;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final DEVICE_PROVISIONED:Ljava/lang/String;

.field public static final MOBILE_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MOBILE_DATA"

    const-class v1, Landroid/provider/Settings$Global;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const-string v0, "DEVICE_NAME"

    const-class v1, Landroid/provider/Settings$Global;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_NAME:Ljava/lang/String;

    const-string v0, "DEVICE_PROVISIONED"

    const-class v1, Landroid/provider/Settings$Global;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
