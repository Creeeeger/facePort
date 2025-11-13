.class public final Landroid/app/GameModeInfo$Builder;
.super Ljava/lang/Object;
.source "GameModeInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/GameModeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActiveGameMode:I

.field private blacklist mAvailableGameModes:[I

.field private blacklist mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsDownscalingAllowed:Z

.field private blacklist mIsFpsOverrideAllowed:Z

.field private blacklist mOverriddenGameModes:[I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/GameModeInfo$Builder;->mAvailableGameModes:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/GameModeInfo$Builder;->mOverriddenGameModes:[I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/GameModeInfo$Builder;->mConfigMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/GameModeInfo;
    .locals 9

    new-instance v8, Landroid/app/GameModeInfo;

    iget v1, p0, Landroid/app/GameModeInfo$Builder;->mActiveGameMode:I

    iget-object v2, p0, Landroid/app/GameModeInfo$Builder;->mAvailableGameModes:[I

    iget-object v3, p0, Landroid/app/GameModeInfo$Builder;->mOverriddenGameModes:[I

    iget-boolean v4, p0, Landroid/app/GameModeInfo$Builder;->mIsDownscalingAllowed:Z

    iget-boolean v5, p0, Landroid/app/GameModeInfo$Builder;->mIsFpsOverrideAllowed:Z

    iget-object v6, p0, Landroid/app/GameModeInfo$Builder;->mConfigMap:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/GameModeInfo;-><init>(I[I[IZZLjava/util/Map;Landroid/app/GameModeInfo-IA;)V

    return-object v8
.end method

.method public whitelist setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/GameModeInfo$Builder;->mActiveGameMode:I

    return-object p0
.end method

.method public whitelist setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GameModeInfo$Builder;->mAvailableGameModes:[I

    return-object p0
.end method

.method public whitelist setDownscalingAllowed(Z)Landroid/app/GameModeInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/GameModeInfo$Builder;->mIsDownscalingAllowed:Z

    return-object p0
.end method

.method public whitelist setFpsOverrideAllowed(Z)Landroid/app/GameModeInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/GameModeInfo$Builder;->mIsFpsOverrideAllowed:Z

    return-object p0
.end method

.method public whitelist setGameModeConfiguration(ILandroid/app/GameModeConfiguration;)Landroid/app/GameModeInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/GameModeInfo$Builder;->mConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setOverriddenGameModes([I)Landroid/app/GameModeInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GameModeInfo$Builder;->mOverriddenGameModes:[I

    return-object p0
.end method
