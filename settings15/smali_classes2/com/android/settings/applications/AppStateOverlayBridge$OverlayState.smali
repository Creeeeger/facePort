.class public final Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
.super Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DISABLE_PACKAGE_LIST:Ljava/util/List;


# instance fields
.field public final controlEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->DISABLE_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iget-boolean v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iput-boolean v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iget-boolean p1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    sget-object p1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->DISABLE_PACKAGE_LIST:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z

    return-void
.end method
