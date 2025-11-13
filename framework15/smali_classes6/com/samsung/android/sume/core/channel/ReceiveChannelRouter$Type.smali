.class public final enum Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
.super Ljava/lang/Enum;
.source "ReceiveChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

.field public static final enum blacklist ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

.field public static final enum blacklist ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->$values()[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->$VALUES:[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->$VALUES:[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    return-object v0
.end method
