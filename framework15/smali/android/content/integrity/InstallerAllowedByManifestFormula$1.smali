.class Landroid/content/integrity/InstallerAllowedByManifestFormula$1;
.super Ljava/lang/Object;
.source "InstallerAllowedByManifestFormula.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/InstallerAllowedByManifestFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/integrity/InstallerAllowedByManifestFormula;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/InstallerAllowedByManifestFormula;
    .locals 2

    new-instance v0, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>(Landroid/os/Parcel;Landroid/content/integrity/InstallerAllowedByManifestFormula-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/integrity/InstallerAllowedByManifestFormula$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/InstallerAllowedByManifestFormula;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/integrity/InstallerAllowedByManifestFormula;
    .locals 1

    new-array v0, p1, [Landroid/content/integrity/InstallerAllowedByManifestFormula;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/integrity/InstallerAllowedByManifestFormula$1;->newArray(I)[Landroid/content/integrity/InstallerAllowedByManifestFormula;

    move-result-object p1

    return-object p1
.end method
