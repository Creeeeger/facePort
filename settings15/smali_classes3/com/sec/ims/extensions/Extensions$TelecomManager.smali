.class public Lcom/sec/ims/extensions/Extensions$TelecomManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelecomManager"
.end annotation


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
