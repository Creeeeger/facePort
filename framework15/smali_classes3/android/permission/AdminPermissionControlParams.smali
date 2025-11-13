.class public final Landroid/permission/AdminPermissionControlParams;
.super Ljava/lang/Object;
.source "AdminPermissionControlParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/AdminPermissionControlParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCanAdminGrantSensorsPermissions:Z

.field private final blacklist mGrantState:I

.field private final blacklist mGranteePackageName:Ljava/lang/String;

.field private final blacklist mPermission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/permission/AdminPermissionControlParams$1;

    invoke-direct {v0}, Landroid/permission/AdminPermissionControlParams$1;-><init>()V

    sput-object v0, Landroid/permission/AdminPermissionControlParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Package name must not be empty."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "Permission must not be empty."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    iput p3, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    iput-boolean p4, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    return-void
.end method


# virtual methods
.method public whitelist canAdminGrantSensorsPermissions()Z
    .locals 1

    iget-boolean v0, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGrantState()I
    .locals 1

    iget v0, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    return v0
.end method

.method public whitelist getGranteePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    iget v2, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Grantee %s Permission %s state: %d admin grant of sensors permissions: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
