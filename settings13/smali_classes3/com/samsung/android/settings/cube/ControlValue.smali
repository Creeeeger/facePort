.class public Lcom/samsung/android/settings/cube/ControlValue;
.super Ljava/lang/Object;
.source "ControlValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;,
        Lcom/samsung/android/settings/cube/ControlValue$Builder;
    }
.end annotation


# instance fields
.field private final mAvailabilityStatus:I

.field private final mBundle:Landroid/os/Bundle;

.field private final mControlId:Ljava/lang/String;

.field private final mControlType:I

.field private final mForceChange:Z

.field private final mIsDefault:Z

.field private final mKey:Ljava/lang/String;

.field private final mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

.field private final mStatusCode:Ljava/lang/String;

.field private final mStorePackage:Ljava/lang/String;

.field private final mSummary:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBundle(Lcom/samsung/android/settings/cube/ControlValue;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControlType(Lcom/samsung/android/settings/cube/ControlValue;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceChange(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDefault(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/ControlValue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Lcom/samsung/android/settings/cube/ControlValue$Builder;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mSummary:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmStorePackage(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mStorePackage:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmUri(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mUri:Landroid/net/Uri;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmIsDefault(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    .line 43
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmForceChange(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    .line 44
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmControlType(Lcom/samsung/android/settings/cube/ControlValue$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    .line 46
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmBundle(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmBundleDataAsString(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmBundleDataAsString(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    array-length v1, v0

    if-lez v1, :cond_0

    .line 49
    new-instance v1, Landroid/os/Bundle;

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/actions/ParcelableUtil;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmBundle(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmControlId(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlId:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmAvailabilityStatus(Lcom/samsung/android/settings/cube/ControlValue$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mAvailabilityStatus:I

    .line 58
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmStatusCode(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mStatusCode:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->-$$Nest$fgetmSourceInfo(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/cube/ControlValue$Builder;Lcom/samsung/android/settings/cube/ControlValue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlValue;-><init>(Lcom/samsung/android/settings/cube/ControlValue$Builder;)V

    return-void
.end method

.method public static buildEmptySourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;
    .locals 4

    .line 317
    new-instance v0, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v0}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>()V

    const-string v1, ""

    .line 318
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SourceInfo;->setVersion(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SourceInfo;->setDTDVersion(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SourceInfo;->setOneUIVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 321
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/SourceInfo;->setManufacturer(I)V

    .line 322
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/SourceInfo;->setRestoreViaFastTrack(Z)V

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/SourceInfo;->setPackageList(Ljava/util/ArrayList;)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SourceInfo;->setDeviceType(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/SourceInfo;->setOSVersion(I)V

    .line 326
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/SourceInfo;->setRequestFrom(I)V

    return-object v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeInt(Ljava/lang/String;)I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getAttributeStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mAvailabilityStatus:I

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getControlId()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    return-object p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mStatusCode:Ljava/lang/String;

    return-object p0
.end method

.method public getStorePackage()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mStorePackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTypedValue()Ljava/lang/Object;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getControlType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x64

    if-eq p0, v1, :cond_1

    const/16 v1, 0x65

    if-eq p0, v1, :cond_1

    return-object v0

    .line 97
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 93
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDefault()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    return p0
.end method

.method public shouldIgnoreUserInteraction()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;-><init>(Lcom/samsung/android/settings/cube/ControlValue;)V

    .line 164
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 165
    const-class v1, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
