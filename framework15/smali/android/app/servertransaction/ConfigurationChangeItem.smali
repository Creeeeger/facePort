.class public Landroid/app/servertransaction/ConfigurationChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ConfigurationChangeItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ConfigurationChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/content/res/Configuration;I)Landroid/app/servertransaction/ConfigurationChangeItem;
    .locals 2

    const-class v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/ConfigurationChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>()V

    move-object v0, v1

    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iput p1, v0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget-object v3, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v2, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    iget v4, v2, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->handleConfigurationChanged(Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideScaleIfNeeded(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationChangeItem{deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
