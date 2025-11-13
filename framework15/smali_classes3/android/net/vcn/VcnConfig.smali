.class public final Landroid/net/vcn/VcnConfig;
.super Ljava/lang/Object;
.source "VcnConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnConfig$Builder;,
        Landroid/net/vcn/VcnConfig$VcnUnderlyingNetworkTransport;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_TRANSPORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GATEWAY_CONNECTION_CONFIGS_KEY:Ljava/lang/String; = "mGatewayConnectionConfigs"

.field private static final blacklist IS_TEST_MODE_PROFILE_KEY:Ljava/lang/String; = "mIsTestModeProfile"

.field private static final blacklist PACKAGE_NAME_KEY:Ljava/lang/String; = "mPackageName"

.field private static final blacklist RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESTRICTED_TRANSPORTS_KEY:Ljava/lang/String; = "mRestrictedTransports"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mGatewayConnectionConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsTestModeProfile:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRestrictedTransports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetALLOWED_TRANSPORTS()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/net/vcn/VcnConfig;->ALLOWED_TRANSPORTS:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/net/vcn/VcnConfig;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnConfig;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnConfig;->ALLOWED_TRANSPORTS:Ljava/util/Set;

    sget-object v0, Landroid/net/vcn/VcnConfig;->ALLOWED_TRANSPORTS:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/net/vcn/VcnConfig;->ALLOWED_TRANSPORTS:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/net/vcn/VcnConfig;->ALLOWED_TRANSPORTS:Ljava/util/Set;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnConfig;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    new-instance v0, Landroid/net/vcn/VcnConfig$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnConfig$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "mPackageName"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    nop

    const-string/jumbo v0, "mGatewayConnectionConfigs"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    new-instance v2, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    nop

    const-string/jumbo v1, "mRestrictedTransports"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Landroid/net/vcn/VcnConfig;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    iput-object v2, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v1, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    :goto_0
    const-string/jumbo v2, "mIsTestModeProfile"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-direct {p0}, Landroid/net/vcn/VcnConfig;->validate()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    iput-boolean p4, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-direct {p0}, Landroid/net/vcn/VcnConfig;->validate()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ZLandroid/net/vcn/VcnConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/vcn/VcnConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method

.method private blacklist validate()V
    .locals 5

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "packageName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    const-string v1, "gatewayConnectionConfigs was empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/net/vcn/VcnConfig;->ALLOWED_TRANSPORTS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget-object v2, Landroid/net/vcn/VcnConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found invalid transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which might be from a new version of VcnConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Found TRANSPORT_TEST in a non-test-mode profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/vcn/VcnConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnConfig;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    iget-boolean v3, v0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getGatewayConnectionConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProvisioningPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRestrictedUnderlyingNetworkTransports()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    iget-boolean v3, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isTestModeProfile()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 5

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "mPackageName"

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "mGatewayConnectionConfigs"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnConfig;->mRestrictedTransports:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v3, "mRestrictedTransports"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v3, "mIsTestModeProfile"

    iget-boolean v4, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/net/vcn/VcnConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
