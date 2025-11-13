.class public final Landroid/app/GameModeInfo;
.super Ljava/lang/Object;
.source "GameModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameModeInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameModeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActiveGameMode:I

.field private final blacklist mAvailableGameModes:[I

.field private final blacklist mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsDownscalingAllowed:Z

.field private final blacklist mIsFpsOverrideAllowed:Z

.field private final blacklist mOverriddenGameModes:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/GameModeInfo$1;

    invoke-direct {v0}, Landroid/app/GameModeInfo$1;-><init>()V

    sput-object v0, Landroid/app/GameModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[I)V
    .locals 8

    const/4 v0, 0x0

    new-array v4, v0, [I

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroid/app/GameModeInfo;-><init>(I[I[IZZLjava/util/Map;)V

    return-void
.end method

.method private constructor blacklist <init>(I[I[IZZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[IZZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/GameModeConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/GameModeInfo;->mOverriddenGameModes:[I

    iput-boolean p4, p0, Landroid/app/GameModeInfo;->mIsDownscalingAllowed:Z

    iput-boolean p5, p0, Landroid/app/GameModeInfo;->mIsFpsOverrideAllowed:Z

    iput-object p6, p0, Landroid/app/GameModeInfo;->mConfigMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(I[I[IZZLjava/util/Map;Landroid/app/GameModeInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/GameModeInfo;-><init>(I[I[IZZLjava/util/Map;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/GameModeInfo;->mOverriddenGameModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/GameModeInfo;->mIsDownscalingAllowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/GameModeInfo;->mIsFpsOverrideAllowed:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/GameModeInfo;->mConfigMap:Ljava/util/Map;

    iget-object v0, p0, Landroid/app/GameModeInfo;->mConfigMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    const-class v3, Landroid/app/GameModeConfiguration;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActiveGameMode()I
    .locals 1

    iget v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    return v0
.end method

.method public whitelist getAvailableGameModes()[I
    .locals 2

    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    iget-object v1, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGameModeConfiguration(I)Landroid/app/GameModeConfiguration;
    .locals 2

    iget-object v0, p0, Landroid/app/GameModeInfo;->mConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameModeConfiguration;

    return-object v0
.end method

.method public whitelist getOverriddenGameModes()[I
    .locals 2

    iget-object v0, p0, Landroid/app/GameModeInfo;->mOverriddenGameModes:[I

    iget-object v1, p0, Landroid/app/GameModeInfo;->mOverriddenGameModes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist isDownscalingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/GameModeInfo;->mIsDownscalingAllowed:Z

    return v0
.end method

.method public whitelist isFpsOverrideAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/GameModeInfo;->mIsFpsOverrideAllowed:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/app/GameModeInfo;->mOverriddenGameModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean v0, p0, Landroid/app/GameModeInfo;->mIsDownscalingAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/GameModeInfo;->mIsFpsOverrideAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/GameModeInfo;->mConfigMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
