.class public final Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
.method public constructor <init>(Lcom/samsung/android/settings/cube/ControlValue;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mBundleAsString:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mIsDefault:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mForceChange:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mControlType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildControlValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mForceChange:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->buildControlValue(Ljava/lang/String;Landroid/net/Uri;ZLcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public final buildControlValue(Ljava/lang/String;Landroid/net/Uri;ZLcom/samsung/android/gtscell/data/GtsConfiguration;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 5

    const-string v0, "ControlValue$ControlValueWrapper"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mControlType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mControlType:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mIsDefault:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->mBundleAsString:Ljava/lang/String;

    iput-object p0, v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    iput-object p2, v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mUri:Landroid/net/Uri;

    if-nez p4, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/cube/ControlValue;->buildEmptySourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object p0

    invoke-virtual {p4}, Lcom/samsung/android/gtscell/data/GtsConfiguration;->getBuildCharacteristics()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/samsung/android/gtscell/data/GtsConfiguration;->getOsVersion()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    :goto_0
    iput-object p0, v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, "mKey and mControlType should not be null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "buildControlValue() "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
