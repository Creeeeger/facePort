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
    .param p1, "ulevel"    # I
    .param p2, "dlevel"    # I
    .param p3, "prio"    # Z
    .param p4, "ext"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mUlLevel:I

    .line 140
    iput p2, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mDlLevel:I

    .line 141
    iput-boolean p3, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mPrioDefault:Z

    .line 142
    iput-boolean p4, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mExtension:Z

    .line 143
    return-void
.end method


# virtual methods
.method public blacklist getDlLevel()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mDlLevel:I

    return v0
.end method

.method public blacklist getExtension()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mExtension:Z

    return v0
.end method

.method public blacklist getPrioDefault()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mPrioDefault:Z

    return v0
.end method

.method public blacklist getUlLevel()I
    .locals 1

    .line 146
    iget v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mUlLevel:I

    return v0
.end method
