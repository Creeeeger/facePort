.class public Lcom/sec/ims/extensions/Extensions$TelecomManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final RTT_MODE:I

.field public static final RTT_MODE_OFF:I

.field public static final TTY_MODE_OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TTY_MODE_OFF"

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    add-int/lit8 v1, v0, 0x4

    sput v1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    sput v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
