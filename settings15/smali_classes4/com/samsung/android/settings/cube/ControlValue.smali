.class public final Lcom/samsung/android/settings/cube/ControlValue;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAvailabilityStatus:I

.field public final mBundle:Landroid/os/Bundle;

.field public final mControlId:Ljava/lang/String;

.field public final mControlType:I

.field public final mForceChange:Z

.field public final mIsDefault:Z

.field public final mKey:Ljava/lang/String;

.field public final mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

.field public final mStatusCode:Ljava/lang/String;

.field public final mStorePackage:Ljava/lang/String;

.field public final mSummary:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/cube/ControlValue$Builder;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mSummary:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStorePackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mStorePackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    iget v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlType:I

    iput v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlId:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    iput v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mAvailabilityStatus:I

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mStatusCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    return-void
.end method

.method public static buildEmptySourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v0}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    iput-boolean v2, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput v2, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    iput v2, v0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    return-object v0
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAttributeInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getAttributeStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTypedValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    iget p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x64

    if-eq p0, v1, :cond_1

    const/16 v1, 0x65

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;-><init>(Lcom/samsung/android/settings/cube/ControlValue;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
