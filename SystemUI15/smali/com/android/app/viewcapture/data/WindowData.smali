.class public final Lcom/android/app/viewcapture/data/WindowData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

.field public static final FRAMEDATA_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private frameData_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/viewcapture/data/WindowData;

    invoke-direct {v0}, Lcom/android/app/viewcapture/data/WindowData;-><init>()V

    sput-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    const-class v1, Lcom/android/app/viewcapture/data/WindowData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    iput-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->title_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/viewcapture/data/WindowData;
    .locals 1

    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    return-object v0
.end method

.method public static access$200(Lcom/android/app/viewcapture/data/WindowData;Lcom/android/app/viewcapture/data/FrameData;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    iget-object p0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static access$700(Lcom/android/app/viewcapture/data/WindowData;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/app/viewcapture/data/WindowData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/app/viewcapture/data/WindowData;->bitField0_:I

    iput-object p1, p0, Lcom/android/app/viewcapture/data/WindowData;->title_:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/android/app/viewcapture/data/WindowData$Builder;
    .locals 1

    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/app/viewcapture/data/WindowData$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/android/app/viewcapture/data/WindowData$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/android/app/viewcapture/data/WindowData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/app/viewcapture/data/WindowData;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/app/viewcapture/data/WindowData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/app/viewcapture/data/WindowData;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "frameData_"

    const-class v0, Lcom/android/app/viewcapture/data/FrameData;

    const-string/jumbo v1, "title_"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000"

    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/android/app/viewcapture/data/WindowData$Builder;

    invoke-direct {p0, p1}, Lcom/android/app/viewcapture/data/WindowData$Builder;-><init>(Lcom/android/app/viewcapture/data/WindowData$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/app/viewcapture/data/WindowData;

    invoke-direct {p0}, Lcom/android/app/viewcapture/data/WindowData;-><init>()V

    return-object p0

    nop

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

.method public final getFrameDataList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    iget-object p0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
