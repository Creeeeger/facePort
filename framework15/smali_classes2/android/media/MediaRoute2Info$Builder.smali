.class public final Landroid/media/MediaRoute2Info$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Ljava/lang/String;

.field private blacklist mAllowedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientPackageName:Ljava/lang/String;

.field private blacklist mConnectionState:I

.field private blacklist mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIconUri:Landroid/net/Uri;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsSystem:Z

.field private blacklist mIsVisibilityRestricted:Z

.field private final blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mProviderId:Ljava/lang/String;

.field private blacklist mSuitabilityStatus:I

.field private blacklist mType:I

.field private blacklist mVolume:I

.field private blacklist mVolumeHandling:I

.field private blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/MediaRoute2Info$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/media/MediaRoute2Info;)V
    .locals 1

    invoke-static {p1}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "routeInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmName(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmType(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    :cond_0
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addFeatures(Ljava/util/Collection;)Landroid/media/MediaRoute2Info$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist build()Landroid/media/MediaRoute2Info;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaRoute2Info;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2Info;-><init>(Landroid/media/MediaRoute2Info$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearFeatures()Landroid/media/MediaRoute2Info$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public blacklist setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    return-object p0
.end method

.method public whitelist setDeduplicationIds(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2Info$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setIconUri(Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    return-object p0
.end method

.method public blacklist setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    return-object p0
.end method

.method public whitelist setType(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    return-object p0
.end method

.method public whitelist setVisibilityPublic()Landroid/media/MediaRoute2Info$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setVisibilityRestricted(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    return-object p0
.end method
