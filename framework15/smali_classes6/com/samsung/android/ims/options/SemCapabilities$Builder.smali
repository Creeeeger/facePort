.class public Lcom/samsung/android/ims/options/SemCapabilities$Builder;
.super Ljava/lang/Object;
.source "SemCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected blacklist mAvailableFeatures:J

.field protected blacklist mBotServiceId:Ljava/lang/String;

.field protected blacklist mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mFeatures:J

.field protected blacklist mIsAvailable:Z

.field protected blacklist mIsExpired:Z

.field protected blacklist mIsLegacyLatching:Z

.field protected blacklist mTimestamp:Ljava/util/Date;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1

    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilities;-><init>(Lcom/samsung/android/ims/options/SemCapabilities$Builder;)V

    return-object v0
.end method

.method public blacklist setAvailableFeatures(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    return-object p0
.end method

.method public blacklist setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setExtFeature(Ljava/util/List;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/options/SemCapabilities$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist setFeature(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    return-object p0
.end method

.method public blacklist setIsAvailable(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    return-object p0
.end method

.method public blacklist setIsExpired(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    return-object p0
.end method

.method public blacklist setLegacyLatching(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    return-object p0
.end method

.method public blacklist setTimestamp(Ljava/util/Date;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method
