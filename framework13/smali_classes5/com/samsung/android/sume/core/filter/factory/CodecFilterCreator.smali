.class public Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator;
.super Ljava/lang/Object;
.source "CodecFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 3
    .param p1, "factory"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .param p2, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p3, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "factory",
            "descriptor",
            "successor"
        }
    .end annotation

    .line 18
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 20
    .local v0, "codecDescriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    sget-object v1, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :pswitch_0
    new-instance v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    return-object v1

    .line 23
    :pswitch_1
    new-instance v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/filter/DecoderFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
