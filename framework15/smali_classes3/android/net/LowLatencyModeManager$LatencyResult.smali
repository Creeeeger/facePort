.class public Landroid/net/LowLatencyModeManager$LatencyResult;
.super Ljava/lang/Object;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyResult"
.end annotation


# instance fields
.field private blacklist mDlLevel:I

.field private blacklist mExtension:Z

.field private blacklist mPrioDefault:Z

.field private blacklist mUlLevel:I


# direct methods
.method public constructor blacklist <init>(IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mUlLevel:I

    iput p2, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mDlLevel:I

    iput-boolean p3, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mPrioDefault:Z

    iput-boolean p4, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mExtension:Z

    return-void
.end method


# virtual methods
.method public blacklist getDlLevel()I
    .locals 1

    iget v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mDlLevel:I

    return v0
.end method

.method public blacklist getExtension()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mExtension:Z

    return v0
.end method

.method public blacklist getPrioDefault()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mPrioDefault:Z

    return v0
.end method

.method public blacklist getUlLevel()I
    .locals 1

    iget v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mUlLevel:I

    return v0
.end method
