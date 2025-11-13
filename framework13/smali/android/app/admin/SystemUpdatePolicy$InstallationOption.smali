.class public Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallationOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$InstallationOption$InstallationOptionType;
    }
.end annotation


# instance fields
.field private greylist-max-o mEffectiveTime:J

.field private final greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEffectiveTime(Landroid/app/admin/SystemUpdatePolicy$InstallationOption;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/app/admin/SystemUpdatePolicy$InstallationOption;)I
    .locals 0

    iget p0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    return p0
.end method

.method constructor greylist-max-o <init>(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "effectiveTime"    # J

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    .line 587
    iput-wide p2, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    .line 588
    return-void
.end method


# virtual methods
.method public whitelist getEffectiveTime()J
    .locals 2

    .line 605
    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-wide v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 596
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    return v0
.end method

.method protected greylist-max-o limitEffectiveTime(J)V
    .locals 2
    .param p1, "otherTime"    # J

    .line 610
    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    .line 611
    return-void
.end method
