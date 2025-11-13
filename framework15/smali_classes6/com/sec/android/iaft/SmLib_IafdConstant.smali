.class public Lcom/sec/android/iaft/SmLib_IafdConstant;
.super Ljava/lang/Object;
.source "SmLib_IafdConstant.java"


# static fields
.field public static final blacklist CAN_NOT_FOUND:I = 0x0

.field public static final blacklist DC_API_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.dcapi"

.field public static final blacklist FLAG_UPDATE_FAIL:I = -0x1

.field public static final blacklist IAFD_STUB_EX_CHECK_UPDATE_API:Landroid/net/Uri;

.field public static final blacklist KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final blacklist KEY_ERROR_COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist KEY_ERROR_STACK:Ljava/lang/String; = "error_stack"

.field public static final blacklist KEY_ERROR_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist KEY_PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field public static final blacklist KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final blacklist KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final blacklist KEY_VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final blacklist METHOD_CHECK_UPDATE:Ljava/lang/String; = "checkUpdate"

.field public static final blacklist METHOD_REPORT_TO_SERVER:Ljava/lang/String; = "reportToServer"

.field public static final blacklist NO_UPDATE:I = 0x1

.field public static final blacklist UPDATE_AVAILABLE:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.android.sm.dcapi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "iafdCheckUpdate"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/SmLib_IafdConstant;->IAFD_STUB_EX_CHECK_UPDATE_API:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
