.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
.super Ljava/lang/Object;
.source "KnownNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

.field private blacklist mNetworkSource:I

.field private final blacklist mSecurityTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSsid:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkSource:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSecurityTypes:Landroid/util/ArraySet;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist addSecurityType(I)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 8

    new-instance v7, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkSource:I

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSsid:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSecurityTypes:Landroid/util/ArraySet;

    iget-object v4, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iget-object v5, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork-IA;)V

    return-object v7
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setNetworkProviderInfo(Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    return-object p0
.end method

.method public whitelist setNetworkSource(I)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .locals 0

    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mNetworkSource:I

    return-object p0
.end method

.method public whitelist setSsid(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;->mSsid:Ljava/lang/String;

    return-object p0
.end method
