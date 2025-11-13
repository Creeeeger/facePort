.class public final Lcom/android/app/motiontool/PollTraceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private data_:Lcom/android/app/viewcapture/data/MotionWindowData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/motiontool/PollTraceResponse;

    invoke-direct {v0}, Lcom/android/app/motiontool/PollTraceResponse;-><init>()V

    sput-object v0, Lcom/android/app/motiontool/PollTraceResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

    const-class v1, Lcom/android/app/motiontool/PollTraceResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/PollTraceResponse;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/PollTraceResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

    return-object v0
.end method

.method public static access$100(Lcom/android/app/motiontool/PollTraceResponse;Lcom/android/app/viewcapture/data/MotionWindowData;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/app/motiontool/PollTraceResponse;->data_:Lcom/android/app/viewcapture/data/MotionWindowData;

    iget p1, p0, Lcom/android/app/motiontool/PollTraceResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/app/motiontool/PollTraceResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/android/app/motiontool/PollTraceResponse$Builder;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/PollTraceResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/app/motiontool/PollTraceResponse$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/android/app/motiontool/PollTraceResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/app/motiontool/PollTraceResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/app/motiontool/PollTraceResponse;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/PollTraceResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lcom/android/app/motiontool/PollTraceResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/app/motiontool/PollTraceResponse;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/app/motiontool/PollTraceResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "data_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    sget-object v0, Lcom/android/app/motiontool/PollTraceResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceResponse;

    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/android/app/motiontool/PollTraceResponse$Builder;

    invoke-direct {p0, p1}, Lcom/android/app/motiontool/PollTraceResponse$Builder;-><init>(Lcom/android/app/motiontool/PollTraceResponse$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/app/motiontool/PollTraceResponse;

    invoke-direct {p0}, Lcom/android/app/motiontool/PollTraceResponse;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
