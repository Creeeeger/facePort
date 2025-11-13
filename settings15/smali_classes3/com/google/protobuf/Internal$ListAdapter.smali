.class public final Lcom/google/protobuf/Internal$ListAdapter;
.super Ljava/util/AbstractList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final converter:Lcom/google/protobuf/Internal$ListAdapter$Converter;

.field public final fromList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    iput-object p2, p0, Lcom/google/protobuf/Internal$ListAdapter;->converter:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Internal$ListAdapter;->converter:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object p0, p0, Lcom/google/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->PRESENT_FORMAT_UNSPECIFIED:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    :cond_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
