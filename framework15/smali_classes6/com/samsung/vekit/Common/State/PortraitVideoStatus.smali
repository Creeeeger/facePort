.class public final enum Lcom/samsung/vekit/Common/State/PortraitVideoStatus;
.super Ljava/lang/Enum;
.source "PortraitVideoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/State/PortraitVideoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

.field public static final enum blacklist ERROR:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

.field public static final enum blacklist UPDATE_FRAME_INFO:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

.field public static final enum blacklist UPDATE_KEYFRAME:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->UPDATE_FRAME_INFO:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    sget-object v1, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->UPDATE_KEYFRAME:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    sget-object v2, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->ERROR:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    const-string v1, "UPDATE_FRAME_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->UPDATE_FRAME_INFO:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    new-instance v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    const-string v1, "UPDATE_KEYFRAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->UPDATE_KEYFRAME:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    new-instance v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->ERROR:Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    invoke-static {}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->$values()[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->$VALUES:[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/State/PortraitVideoStatus;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->$VALUES:[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    return-object v0
.end method
