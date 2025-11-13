.class public Lcom/samsung/android/settings/cube/gts/GtsCube;
.super Lcom/samsung/android/settings/cube/CubeFactoryProvider;
.source "GtsCube.java"


# static fields
.field private static final AVAILABLE_STATUS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GtsCube"


# instance fields
.field private final mAsyncResultCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/ResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mGtsItemConverter:Lcom/samsung/android/settings/cube/gts/GtsItemConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube;->AVAILABLE_STATUS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->mAsyncResultCallback:Ljava/util/HashMap;

    .line 69
    new-instance p1, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;

    invoke-direct {p1}, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->mGtsItemConverter:Lcom/samsung/android/settings/cube/gts/GtsItemConverter;

    return-void
.end method

.method private buildErrorResult(Lcom/samsung/android/settings/cube/ControlResult;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;
    .locals 2

    .line 237
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    .line 239
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlResult;->getErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlResult;->getErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    goto :goto_0

    .line 242
    :pswitch_1
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->DEPENDENT_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    .line 255
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlResult;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlResult;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private buildResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)Lcom/samsung/android/gtscell/data/result/GtsItemResult;
    .locals 2

    .line 214
    sget-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ResultCode:[I

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult;->getResultCode()Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 226
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult;->getErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->ALREADY_SET:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    if-ne p1, p3, :cond_0

    .line 227
    new-instance p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Pass;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Pass;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/cube/gts/GtsCube;->buildErrorResult(Lcom/samsung/android/settings/cube/ControlResult;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    move-result-object p0

    goto :goto_0

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->mAsyncResultCallback:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildResult() - Async "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 216
    :cond_2
    new-instance p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Pass;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Pass;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private convertControlValue(Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 183
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getValue()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 187
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertControlValue() "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "controlValueWrapper is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getEmbeddedItems()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "uri"

    .line 198
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsItem;

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getTypedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    move-object v0, p1

    :cond_1
    const/4 p1, 0x1

    .line 202
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->buildControlValue(Ljava/lang/String;Landroid/net/Uri;ZLcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method private getAlreadySetResult(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    .line 177
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->ALREADY_SET:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 178
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method private getControlFailResultByStatus(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    .line 259
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 272
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_TEMPORARY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_0

    .line 263
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_0

    .line 269
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_BY_POLICY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_0

    .line 266
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 276
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getStatusCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method private getControlResult(Lcom/samsung/android/settings/cube/ControlValue;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/gts/GtsCube;->isCustomControlType(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getAlreadySetResult(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->setValue(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult$ResultCode;Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    .line 281
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 282
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method private handleResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->buildResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p3, p0}, Lcom/samsung/android/gtscell/ResultCallback;->onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    :cond_0
    return-void
.end method

.method private isAvailableControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 4

    if-nez p1, :cond_0

    .line 111
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    const-string p1, "isAvailableControlValue() controlValue is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getAvailabilityStatus()I

    move-result p0

    .line 116
    sget-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube;->AVAILABLE_STATUS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sget-object v1, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableControlValue() status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " / Key : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private isCustomControlType(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getControlType()I

    move-result p0

    const/16 p1, 0x66

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCubeLabel()Ljava/lang/String;
    .locals 0

    .line 55
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getGtsItem(Lcom/samsung/android/settings/cube/index/ControlData;)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
    .locals 2

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/index/ControlData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cube/gts/GtsCube;->isAvailableControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 101
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGtsItem() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/index/ControlData;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " controlValue is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->mGtsItemConverter:Lcom/samsung/android/settings/cube/gts/GtsItemConverter;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->convertData(Lcom/samsung/android/settings/cube/index/ControlData;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getGtsItemGroups(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getAllIndexedControlData()Ljava/util/HashMap;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    sget-object v3, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "valid key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/cube/index/ControlData;

    .line 81
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getGtsItem(Lcom/samsung/android/settings/cube/index/ControlData;)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to convert from control data to gts value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_1
    sget-object v3, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find gts key from indexed items : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/cube/gts/GtsCube;->mAsyncResultCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gtscell/ResultCallback;

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/cube/gts/GtsCube;->handleResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)V

    :cond_0
    return-void
.end method

.method public setGtsItem(Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources;->getInstance()Lcom/samsung/android/settings/gts/GtsResources;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/gts/GtsResources;->isSupportGts(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    sget-object v1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object v2, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 131
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult$ResultCode;Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object v1

    .line 130
    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->handleResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)V

    .line 135
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/cube/gts/GtsCube;->convertControlValue(Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p1

    const-string p2, "setGtsItem() "

    if-nez p1, :cond_1

    .line 137
    sget-object p1, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "newValue is null"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object p2, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 139
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult$ResultCode;Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p1

    .line 138
    invoke-direct {p0, v0, p1, p3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->handleResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)V

    return-void

    .line 144
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v1

    if-nez v1, :cond_2

    .line 146
    sget-object p1, Lcom/samsung/android/settings/cube/gts/GtsCube;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "currentValue is null"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object p2, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 148
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult$ResultCode;Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p1

    .line 147
    invoke-direct {p0, v0, p1, p3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->handleResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)V

    return-void

    .line 154
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cube/gts/GtsCube;->isAvailableControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 155
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getControlResult(Lcom/samsung/android/settings/cube/ControlValue;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p2

    goto :goto_0

    .line 157
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getControlFailResultByStatus(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p2

    .line 159
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getControlId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->handleResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;Lcom/samsung/android/gtscell/ResultCallback;)V

    return-void
.end method
