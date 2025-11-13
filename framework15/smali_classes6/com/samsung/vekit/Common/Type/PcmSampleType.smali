.class public final enum Lcom/samsung/vekit/Common/Type/PcmSampleType;
.super Ljava/lang/Enum;
.source "PcmSampleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/PcmSampleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/PcmSampleType;

.field public static final enum blacklist AVERAGE:Lcom/samsung/vekit/Common/Type/PcmSampleType;

.field public static final enum blacklist FIRST:Lcom/samsung/vekit/Common/Type/PcmSampleType;

.field public static final enum blacklist PEAK:Lcom/samsung/vekit/Common/Type/PcmSampleType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/PcmSampleType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->AVERAGE:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/PcmSampleType;->PEAK:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/PcmSampleType;->FIRST:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/PcmSampleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;

    const-string v1, "AVERAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PcmSampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->AVERAGE:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;

    const-string v1, "PEAK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PcmSampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->PEAK:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;

    const-string v1, "FIRST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PcmSampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->FIRST:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/PcmSampleType;->$values()[Lcom/samsung/vekit/Common/Type/PcmSampleType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PcmSampleType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/PcmSampleType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/PcmSampleType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PcmSampleType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/PcmSampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/PcmSampleType;

    return-object v0
.end method
