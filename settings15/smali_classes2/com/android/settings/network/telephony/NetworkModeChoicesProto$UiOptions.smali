.class public final Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CHOICES_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

.field public static final FORMAT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final format_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private choices_:I

.field private format_:Lcom/google/protobuf/Internal$IntList;

.field private memoizedIsInitialized:B

.field private type_:I


# direct methods
.method public static -$$Nest$maddFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget v2, v0, Lcom/google/protobuf/IntArrayList;->size:I

    if-lt v1, v2, :cond_1

    new-instance v2, Lcom/google/protobuf/IntArrayList;

    iget-object v3, v0, Lcom/google/protobuf/IntArrayList;->array:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget v0, v0, Lcom/google/protobuf/IntArrayList;->size:I

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/IntArrayList;-><init>(I[I)V

    iput-object v2, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->getNumber()I

    move-result p1

    check-cast p0, Lcom/google/protobuf/IntArrayList;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    return-void
.end method

.method public static -$$Nest$msetChoices(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->choices_:I

    return-void
.end method

.method public static -$$Nest$msetType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->type_:I

    iget p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    const-class v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->memoizedIsInitialized:B

    sget-object v0, Lcom/google/protobuf/IntArrayList;->EMPTY_LIST:Lcom/google/protobuf/IntArrayList;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    sget-object p1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "type_"

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    const-string v3, "choices_"

    const-string v4, "format_"

    sget-object v5, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->INSTANCE$1:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0002\u0001\u150c\u0000\u0002\u1504\u0001\u0003\u001e"

    sget-object p2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    new-instance v0, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/4 p1, 0x1

    :goto_3
    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->memoizedIsInitialized:B

    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    iget-byte p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    nop

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

.method public final getChoices()I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->choices_:I

    return p0
.end method

.method public final getFormatList()Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->type_:I

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNSPECIFIED:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    :cond_0
    return-object p0
.end method
