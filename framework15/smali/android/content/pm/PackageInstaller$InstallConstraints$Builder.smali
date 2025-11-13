.class public final Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller$InstallConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppNotForegroundRequired:Z

.field private blacklist mAppNotInteractingRequired:Z

.field private blacklist mAppNotTopVisibleRequired:Z

.field private blacklist mDeviceIdleRequired:Z

.field private blacklist mNotInCallRequired:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/pm/PackageInstaller$InstallConstraints;
    .locals 7

    new-instance v6, Landroid/content/pm/PackageInstaller$InstallConstraints;

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mDeviceIdleRequired:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotForegroundRequired:Z

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotInteractingRequired:Z

    iget-boolean v4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotTopVisibleRequired:Z

    iget-boolean v5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mNotInCallRequired:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$InstallConstraints;-><init>(ZZZZZ)V

    return-object v6
.end method

.method public whitelist setAppNotForegroundRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotForegroundRequired:Z

    return-object p0
.end method

.method public whitelist setAppNotInteractingRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotInteractingRequired:Z

    return-object p0
.end method

.method public whitelist setAppNotTopVisibleRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotTopVisibleRequired:Z

    return-object p0
.end method

.method public whitelist setDeviceIdleRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mDeviceIdleRequired:Z

    return-object p0
.end method

.method public whitelist setNotInCallRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mNotInCallRequired:Z

    return-object p0
.end method
