.class public final Landroid/companion/ObservingDevicePresenceRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "ObservingDevicePresenceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ObservingDevicePresenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/ObservingDevicePresenceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAssociationId:I

.field private blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/ObservingDevicePresenceRequest;
    .locals 4

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->markUsed()V

    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot observe device presence based on both ParcelUuid and association ID. Choose one or the other."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must provide either a ParcelUuid or a valid association ID to observe device presence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest;

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    iget-object v2, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;Landroid/companion/ObservingDevicePresenceRequest-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .locals 0

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->checkNotUsed()V

    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    return-object p0
.end method

.method public blacklist setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .locals 0

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->checkNotUsed()V

    iput-object p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method
