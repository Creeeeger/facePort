.class public Landroid/util/MergedConfiguration;
.super Ljava/lang/Object;
.source "MergedConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MergedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mGlobalConfig:Landroid/content/res/Configuration;

.field private final greylist-max-o mMergedConfig:Landroid/content/res/Configuration;

.field private final greylist-max-o mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/MergedConfiguration$1;

    invoke-direct {v0}, Landroid/util/MergedConfiguration$1;-><init>()V

    sput-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/util/MergedConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/MergedConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/util/MergedConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private greylist-max-o updateMergedConfig()V
    .locals 2

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/util/MergedConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    move-object v1, p1

    check-cast v1, Landroid/util/MergedConfiguration;

    iget-object v1, v1, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getMergedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public greylist-max-o setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public greylist-max-o setGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public greylist-max-o setOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public greylist-max-o setTo(Landroid/util/MergedConfiguration;)V
    .locals 2

    iget-object v0, p1, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o unset()V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
