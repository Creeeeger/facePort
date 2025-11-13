.class public Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
.super Ljava/lang/Object;
.source "SatelliteSubscriberProvisionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProvisionStatus:Z

.field private blacklist mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProvisionStatus(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mProvisionStatus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;-><init>(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)V

    return-object v0
.end method

.method public blacklist setProvisionStatus(Z)Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mProvisionStatus:Z

    return-object p0
.end method

.method public blacklist setSatelliteSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberInfo;)Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    return-object p0
.end method
