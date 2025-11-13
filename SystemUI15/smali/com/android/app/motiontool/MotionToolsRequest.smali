.class public final Lcom/android/app/motiontool/MotionToolsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static final BEGIN_TRACE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

.field public static final END_TRACE_FIELD_NUMBER:I = 0x3

.field public static final HANDSHAKE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final POLL_TRACE_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private typeCase_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/motiontool/MotionToolsRequest;

    invoke-direct {v0}, Lcom/android/app/motiontool/MotionToolsRequest;-><init>()V

    sput-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    const-class v1, Lcom/android/app/motiontool/MotionToolsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/MotionToolsRequest;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/app/motiontool/MotionToolsRequest;
    .locals 8

    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    array-length v5, p0

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance$1()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v7

    new-instance v6, Lcom/google/protobuf/ArrayDecoders$Registers;

    invoke-direct {v6, v1}, Lcom/google/protobuf/ArrayDecoders$Registers;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V

    invoke-interface {v7, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized(Lcom/google/protobuf/GeneratedMessageLite;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast v0, Lcom/android/app/motiontool/MotionToolsRequest;

    return-object v0

    :cond_0
    new-instance p0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {p0, v0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)V

    throw v1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)V

    throw p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_1
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)V

    throw v1

    :goto_1
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)V

    throw v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)V

    throw p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 7

    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/app/motiontool/MotionToolsRequest;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    return-object p0

    :pswitch_4
    const-string/jumbo v0, "type_"

    const-string/jumbo v1, "typeCase_"

    const-string v2, "bitField0_"

    const-class v3, Lcom/android/app/motiontool/HandshakeRequest;

    const-class v4, Lcom/android/app/motiontool/BeginTraceRequest;

    const-class v5, Lcom/android/app/motiontool/EndTraceRequest;

    const-class v6, Lcom/android/app/motiontool/PollTraceRequest;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000"

    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/android/app/motiontool/MotionToolsRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/app/motiontool/MotionToolsRequest$Builder;-><init>(Lcom/android/app/motiontool/MotionToolsRequest$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/app/motiontool/MotionToolsRequest;

    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsRequest;-><init>()V

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

.method public final getBeginTrace()Lcom/android/app/motiontool/BeginTraceRequest;
    .locals 2

    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/motiontool/BeginTraceRequest;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/BeginTraceRequest;->getDefaultInstance()Lcom/android/app/motiontool/BeginTraceRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getEndTrace()Lcom/android/app/motiontool/EndTraceRequest;
    .locals 2

    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/motiontool/EndTraceRequest;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/EndTraceRequest;->getDefaultInstance()Lcom/android/app/motiontool/EndTraceRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getHandshake()Lcom/android/app/motiontool/HandshakeRequest;
    .locals 2

    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/motiontool/HandshakeRequest;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/HandshakeRequest;->getDefaultInstance()Lcom/android/app/motiontool/HandshakeRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getPollTrace()Lcom/android/app/motiontool/PollTraceRequest;
    .locals 2

    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/motiontool/PollTraceRequest;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/PollTraceRequest;->getDefaultInstance()Lcom/android/app/motiontool/PollTraceRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getTypeCase()Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;
    .locals 1

    iget p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->HANDSHAKE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->POLL_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->END_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->BEGIN_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->HANDSHAKE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->TYPE_NOT_SET:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    :goto_0
    return-object p0
.end method
