.class public Landroid/telephony/satellite/EnableRequestAttributes;
.super Ljava/lang/Object;
.source "EnableRequestAttributes.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/EnableRequestAttributes$Builder;
    }
.end annotation


# instance fields
.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergencyMode:Z

.field private blacklist mIsEnabled:Z


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->-$$Nest$fgetmIsEnabled(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEnabled:Z

    invoke-static {p1}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->-$$Nest$fgetmIsDemoMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsDemoMode:Z

    invoke-static {p1}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->-$$Nest$fgetmIsEmergencyMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEmergencyMode:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;Landroid/telephony/satellite/EnableRequestAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/EnableRequestAttributes;-><init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist isDemoMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsDemoMode:Z

    return v0
.end method

.method public whitelist isEmergencyMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEmergencyMode:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEnabled:Z

    return v0
.end method
