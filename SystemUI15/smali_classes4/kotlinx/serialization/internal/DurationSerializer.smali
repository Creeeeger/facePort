.class public final Lkotlinx/serialization/internal/DurationSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/DurationSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/DurationSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/DurationSerializer;->INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    const-string v1, "kotlin.time.Duration"

    sget-object v2, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V

    sput-object v0, Lkotlinx/serialization/internal/DurationSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/DurationSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;)V
    .locals 15

    move-object/from16 v0, p2

    check-cast v0, Lkotlin/time/Duration;

    iget-wide v0, v0, Lkotlin/time/Duration;->rawValue:J

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v6, "PT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-gez v5, :cond_1

    shr-long v7, v0, v6

    neg-long v7, v7

    long-to-int v5, v0

    and-int/2addr v5, v6

    shl-long/2addr v7, v6

    int-to-long v9, v5

    add-long/2addr v7, v9

    sget v5, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_0

    :cond_1
    move-wide v7, v0

    :goto_0
    sget-object v5, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v8, v5}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    invoke-static {v7, v8}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v5

    const/16 v11, 0x3c

    const/4 v12, 0x0

    if-eqz v5, :cond_2

    move v3, v12

    goto :goto_1

    :cond_2
    sget-object v5, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v7, v8, v5}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    int-to-long v3, v11

    rem-long/2addr v13, v3

    long-to-int v3, v13

    :goto_1
    invoke-static {v7, v8}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v12

    goto :goto_2

    :cond_3
    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v8, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    int-to-long v13, v11

    rem-long/2addr v4, v13

    long-to-int v4, v4

    :goto_2
    invoke-static {v7, v8}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v5

    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v9, 0x9184e729fffL

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v12

    :goto_3
    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    move v1, v12

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v6

    :goto_5
    if-nez v3, :cond_9

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v6, v12

    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x48

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    if-nez v1, :cond_c

    if-nez v0, :cond_d

    if-nez v6, :cond_d

    :cond_c
    const-string v7, "S"

    const/4 v8, 0x1

    const/16 v6, 0x9

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
