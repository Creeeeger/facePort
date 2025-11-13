.class public final Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;
.super Ljava/lang/Object;
.source "ControlValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/ControlValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControlValueWrapper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ControlValueWrapper"


# instance fields
.field private mBundleAsString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bundle"
    .end annotation
.end field

.field private final mControlType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controlType"
    .end annotation
.end field

.field private final mForceChange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceChange"
    .end annotation
.end field

.field private final mIsDefault:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDefault"
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/cube/ControlValue;)V
    .locals 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/ControlValue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mKey:Ljava/lang/String;

    .line 351
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue;->-$$Nest$fgetmBundle(Lcom/samsung/android/settings/cube/ControlValue;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/actions/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    array-length v1, v0

    if-lez v1, :cond_0

    .line 353
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mBundleAsString:Ljava/lang/String;

    .line 356
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue;->-$$Nest$fgetmIsDefault(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mIsDefault:Ljava/lang/String;

    .line 357
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue;->-$$Nest$fgetmForceChange(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mForceChange:Ljava/lang/String;

    .line 358
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue;->-$$Nest$fgetmControlType(Lcom/samsung/android/settings/cube/ControlValue;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mControlType:Ljava/lang/String;

    return-void
.end method

.method private getSourceInfo(Lcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/lib/episode/SourceInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 389
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/cube/ControlValue;->buildEmptySourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object p0

    .line 390
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsConfiguration;->getBuildCharacteristics()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/episode/SourceInfo;->setDeviceType(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsConfiguration;->getOsVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SourceInfo;->setOSVersion(I)V

    return-object p0
.end method


# virtual methods
.method public buildControlValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mForceChange:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->buildControlValue(Ljava/lang/String;Landroid/net/Uri;ZLcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public buildControlValue(Ljava/lang/String;Landroid/net/Uri;ZLcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    const/4 v0, 0x0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mControlType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mControlType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mIsDefault:Ljava/lang/String;

    .line 372
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 373
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p3

    iget-object v1, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mBundleAsString:Ljava/lang/String;

    .line 374
    invoke-virtual {p3, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setBundleDataAsString(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p3

    .line 375
    invoke-virtual {p3, p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p1

    .line 376
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p1

    .line 377
    invoke-direct {p0, p4}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->getSourceInfo(Lcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSourceInfo(Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0

    .line 368
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->TAG:Ljava/lang/String;

    const-string p1, "mKey and mControlType should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 380
    sget-object p1, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildControlValue() "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
