.class public abstract Lcom/samsung/android/knox/EnterpriseContainerCallback;
.super Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APKS_COUNT:Ljava/lang/String; = "apksCount"

.field public static final CONTAINER_CANCELLED:I = 0x3f8

.field public static final CONTAINER_CHANGE_PWD_FAILED:I = 0x3f5

.field public static final CONTAINER_CHANGE_PWD_SUCCESSFUL:I = 0x3f4

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final CONTAINER_MOUNT_STATUS:I = 0x3f2

.field public static final CONTAINER_PACKAGE_INFORMATION:I = 0x3f3

.field public static final CONTAINER_PACKAGE_INSTALL_FAILURE:I = 0x3ef

.field public static final CONTAINER_PACKAGE_INSTALL_SUCCESS:I = 0x3ee

.field public static final CONTAINER_PACKAGE_UNINSTALL_FAILURE:I = 0x3f1

.field public static final CONTAINER_PACKAGE_UNINSTALL_SUCCESS:I = 0x3f0

.field public static final CONTAINER_REMOVED:I = 0x3eb

.field public static final CONTAINER_REMOVE_UNMOUNT_FAILURE:I = 0x3ed

.field public static final CONTAINER_SETUP_BASE:I = 0x3e8

.field public static final CONTAINER_SETUP_FAILURE:I = 0x3ea

.field public static final CONTAINER_SETUP_SUCCESS:I = 0x3e9

.field public static final CONTAINER_VERIFY_PWD_FAILED:I = 0x3f7

.field public static final CONTAINER_VERIFY_PWD_SUCCESSFUL:I = 0x3f6

.field public static final PACKAGE_INSTALLATION_STATUS:Ljava/lang/String; = "packageInstallStatus"

.field public static final PACKAGE_MANAGER_ERROR_CODE:Ljava/lang/String; = "pmerrorcode"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PRIMARY_MOUNT_STATUS:Ljava/lang/String; = "primaryMountStatus"

.field public static final REQUEST_ID:Ljava/lang/String; = "requestid"

.field public static final SECONDARY_MOUNT_STATUS:Ljava/lang/String; = "secondaryMountStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract updateStatus(ILandroid/os/Bundle;)V
.end method
