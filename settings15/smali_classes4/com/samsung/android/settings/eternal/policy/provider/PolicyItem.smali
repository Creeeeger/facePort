.class public final Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final mDeviceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceType"
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private final mMaxOneUI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxOneUI"
    .end annotation
.end field

.field private final mMinOneUI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minOneUI"
    .end annotation
.end field

.field private final mProviderMax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxProvider"
    .end annotation
.end field

.field private final mProviderMin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minProvider"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mKey:Ljava/lang/String;

    const-string/jumbo p1, "min"

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mMinOneUI:Ljava/lang/String;

    const-string v0, "max"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mMaxOneUI:Ljava/lang/String;

    const-string v1, "common"

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mDeviceType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mProviderMin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mProviderMax:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxOneUI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mMaxOneUI:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinOneUI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mMinOneUI:Ljava/lang/String;

    return-object p0
.end method

.method public final getProviderMax()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mProviderMax:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "max"

    :cond_0
    return-object p0
.end method

.method public final getProviderMin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->mProviderMin:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "min"

    :cond_0
    return-object p0
.end method
