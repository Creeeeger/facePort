.class public final enum Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
.super Ljava/lang/Enum;
.source "SendChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/channel/SendChannelRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

.field public static final enum blacklist ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

.field public static final enum blacklist ANY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

.field public static final enum blacklist BROADCAST_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

.field public static final enum blacklist EVALUATE_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 18
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 19
    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    const-string v3, "ALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 20
    new-instance v3, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    const-string v5, "EVALUATE_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->EVALUATE_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 21
    new-instance v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    const-string v7, "BROADCAST_ONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->BROADCAST_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 17
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->$VALUES:[Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
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

    .line 17
    const-class v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->$VALUES:[Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    return-object v0
.end method
