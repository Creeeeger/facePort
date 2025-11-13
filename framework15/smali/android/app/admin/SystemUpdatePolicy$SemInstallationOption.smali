.class public Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemInstallationOption"
.end annotation


# instance fields
.field private blacklist mEffectiveTime:J

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;->mType:I

    iput-wide p2, p0, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;->mEffectiveTime:J

    return-void
.end method


# virtual methods
.method public whitelist getEffectiveTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;->mEffectiveTime:J

    return-wide v0
.end method

.method public whitelist getType()I
    .locals 2

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e9

    return v0

    :cond_0
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;->mType:I

    return v0
.end method
