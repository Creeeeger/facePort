.class public Lcom/sec/ims/extensions/Extensions$Intent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static final ACTION_USER_SWITCHED:Ljava/lang/String;

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ACTION_USER_SWITCHED"

    const-class v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    const-string v0, "FLAG_RECEIVER_INCLUDE_BACKGROUND"

    const-class v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/Extensions$Intent;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
