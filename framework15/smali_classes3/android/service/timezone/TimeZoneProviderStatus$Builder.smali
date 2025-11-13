.class public final Landroid/service/timezone/TimeZoneProviderStatus$Builder;
.super Ljava/lang/Object;
.source "TimeZoneProviderStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectivityDependencyStatus:I

.field private blacklist mLocationDetectionDependencyStatus:I

.field private blacklist mTimeZoneResolutionOperationStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$fgetmLocationDetectionDependencyStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$fgetmConnectivityDependencyStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$fgetmTimeZoneResolutionOperationStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 5

    new-instance v0, Landroid/service/timezone/TimeZoneProviderStatus;

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    invoke-static {v1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$smrequireValidDependencyStatus(I)I

    move-result v1

    iget v2, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    invoke-static {v2}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$smrequireValidDependencyStatus(I)I

    move-result v2

    iget v3, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    invoke-static {v3}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$smrequireValidOperationStatus(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/timezone/TimeZoneProviderStatus;-><init>(IIILandroid/service/timezone/TimeZoneProviderStatus-IA;)V

    return-object v0
.end method

.method public whitelist setConnectivityDependencyStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    return-object p0
.end method

.method public whitelist setLocationDetectionDependencyStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    return-object p0
.end method

.method public whitelist setTimeZoneResolutionOperationStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    return-object p0
.end method
