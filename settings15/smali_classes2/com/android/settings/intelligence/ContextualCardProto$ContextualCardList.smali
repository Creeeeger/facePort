.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CARD_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field


# instance fields
.field private card_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field


# direct methods
.method public static -$$Nest$maddCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    const-class v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

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

    :pswitch_1
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    sget-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "card_"

    const-class p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    new-instance v0, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCardList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
