.class public final enum Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
.super Ljava/lang/Enum;
.source "CaptureFrameTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Task/CaptureFrameTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field public static final enum blacklist ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field public static final enum blacklist RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field public static final enum blacklist SUPERHDR_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    sget-object v1, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    sget-object v2, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->SUPERHDR_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    const-string v1, "ORIGINAL_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    const-string v1, "RENDERED_FRAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    const-string v1, "SUPERHDR_FRAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->SUPERHDR_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    invoke-static {}, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->$values()[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->$VALUES:[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->$VALUES:[Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method
