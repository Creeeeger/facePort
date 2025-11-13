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
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    .line 15
    new-instance v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    const-string v3, "ALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    .line 13
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->$VALUES:[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->$VALUES:[Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    return-object v0
.end method
