.class public final Lcom/android/app/motiontool/MotionToolsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static final BEGIN_TRACE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

.field public static final END_TRACE_FIELD_NUMBER:I = 0x4

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final HANDSHAKE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final POLL_TRACE_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private typeCase_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-direct {v0}, Lcom/android/app/motiontool/MotionToolsResponse;-><init>()V

    sput-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    const-class v1, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/MotionToolsResponse;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    return-object v0
.end method

.method public static access$1100(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/EndTraceResponse;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    return-void
.end method

.method public static access$1400(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/PollTraceResponse;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    return-void
.end method

.method public static access$200(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/ErrorResponse;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    return-void
.end method

.method public static access$500(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/HandshakeResponse;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    return-void
.end method

.method public static access$800(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/BeginTraceResponse;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 8

    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/app/motiontool/MotionToolsResponse;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    return-object p0

    :pswitch_4
    const-string/jumbo v0, "type_"

    const-string/jumbo v1, "typeCase_"

    const-string v2, "bitField0_"

    const-class v3, Lcom/android/app/motiontool/ErrorResponse;

    const-class v4, Lcom/android/app/motiontool/HandshakeResponse;

    const-class v5, Lcom/android/app/motiontool/BeginTraceResponse;

    const-class v6, Lcom/android/app/motiontool/EndTraceResponse;

    const-class v7, Lcom/android/app/motiontool/PollTraceResponse;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000"

    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    invoke-direct {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsResponse;-><init>()V

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
