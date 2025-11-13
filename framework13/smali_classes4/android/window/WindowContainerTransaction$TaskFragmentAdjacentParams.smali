.class public Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskFragmentAdjacentParams"
.end annotation


# static fields
.field private static final blacklist DELAY_PRIMARY_LAST_ACTIVITY_REMOVAL:Ljava/lang/String; = "android:transaction.adjacent.option.delay_primary_removal"

.field private static final blacklist DELAY_SECONDARY_LAST_ACTIVITY_REMOVAL:Ljava/lang/String; = "android:transaction.adjacent.option.delay_secondary_removal"


# instance fields
.field private blacklist mDelayPrimaryLastActivityRemoval:Z

.field private blacklist mDelaySecondaryLastActivityRemoval:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1858
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1861
    const-string v0, "android:transaction.adjacent.option.delay_primary_removal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    .line 1863
    const-string v0, "android:transaction.adjacent.option.delay_secondary_removal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    .line 1865
    return-void
.end method


# virtual methods
.method public blacklist setShouldDelayPrimaryLastActivityRemoval(Z)V
    .locals 0
    .param p1, "delay"    # Z

    .line 1869
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    .line 1870
    return-void
.end method

.method public blacklist setShouldDelaySecondaryLastActivityRemoval(Z)V
    .locals 0
    .param p1, "delay"    # Z

    .line 1874
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    .line 1875
    return-void
.end method

.method public blacklist shouldDelayPrimaryLastActivityRemoval()Z
    .locals 1

    .line 1886
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    return v0
.end method

.method public blacklist shouldDelaySecondaryLastActivityRemoval()Z
    .locals 1

    .line 1894
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    return v0
.end method

.method blacklist toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1898
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1899
    .local v0, "b":Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    const-string v2, "android:transaction.adjacent.option.delay_primary_removal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1900
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    const-string v2, "android:transaction.adjacent.option.delay_secondary_removal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1901
    return-object v0
.end method
