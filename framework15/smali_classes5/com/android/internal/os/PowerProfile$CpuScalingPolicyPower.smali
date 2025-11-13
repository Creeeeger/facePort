.class Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpuScalingPolicyPower"
.end annotation


# instance fields
.field public final blacklist policyPower:D

.field public blacklist powerBrackets:[I

.field public final blacklist stepPower:[D


# direct methods
.method private constructor blacklist <init>(D[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->policyPower:D

    iput-object p3, p0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    return-void
.end method

.method synthetic constructor blacklist <init>(D[DLcom/android/internal/os/PowerProfile$CpuScalingPolicyPower-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[D)V

    return-void
.end method
