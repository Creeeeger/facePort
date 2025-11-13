.class public final enum Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
.super Ljava/lang/Enum;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/NalUnitParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVCNalUnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_DATA_PARTITION_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_DATA_PARTITION_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_DATA_PARTITION_C:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_NON_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist FU_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist FU_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist MTAP16:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist MTAP24:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist OTHER_NAL_UNIT:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist SEQUENCE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist STAP_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist STAP_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;


# instance fields
.field private final blacklist typeValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .locals 15

    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_NON_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v3, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_C:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v4, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v5, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->SEQUENCE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v6, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v7, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->STAP_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v8, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->STAP_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v9, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->MTAP16:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v10, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->MTAP24:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v11, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->FU_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v12, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->FU_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v13, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->OTHER_NAL_UNIT:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    sget-object v14, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    filled-new-array/range {v0 .. v14}, [Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "CODE_SLICE_NON_IDR_PICTURE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_NON_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "CODE_SLICE_DATA_PARTITION_A"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "CODE_SLICE_DATA_PARTITION_B"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "CODE_SLICE_DATA_PARTITION_C"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_C:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "CODE_SLICE_IDR_PICTURE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "SEQUENCE_PARAMETER_SET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->SEQUENCE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "PICTURE_PARAMETER_SET"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "STAP_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->STAP_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "STAP_B"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->STAP_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "MTAP16"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->MTAP16:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "MTAP24"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->MTAP24:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "FU_A"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->FU_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "FU_B"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->FU_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "OTHER_NAL_UNIT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->OTHER_NAL_UNIT:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "UNKNOWN"

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-static {}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->$values()[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->typeValue:I

    return-void
.end method

.method static blacklist getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .locals 2

    invoke-static {}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->values()[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-object v0
.end method

.method static synthetic blacklist lambda$getNalType$0(ILcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;)Z
    .locals 1

    iget v0, p1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->typeValue:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .locals 1

    const-class v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .locals 1

    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-object v0
.end method
