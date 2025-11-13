.class public Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveCompatibilityParams"
.end annotation


# instance fields
.field private blacklist mEnableIconOverlay:Z

.field private blacklist mEnableUnarchivalConfirmation:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableIconOverlay:Z

    iput-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableUnarchivalConfirmation:Z

    return-void
.end method


# virtual methods
.method public blacklist isEnableIconOverlay()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableIconOverlay:Z

    return v0
.end method

.method public blacklist isEnableUnarchivalConfirmation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableUnarchivalConfirmation:Z

    return v0
.end method

.method public whitelist setEnableIconOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableIconOverlay:Z

    return-void
.end method

.method public whitelist setEnableUnarchivalConfirmation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableUnarchivalConfirmation:Z

    return-void
.end method
