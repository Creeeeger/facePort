.class synthetic Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator$1;
.super Ljava/lang/Object;
.source "CodecFilterCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$sume$core$types$MediaType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 20
    invoke-static {}, Lcom/samsung/android/sume/core/types/MediaType;->values()[Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
