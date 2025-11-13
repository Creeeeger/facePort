.class public Lcom/samsung/android/allshare/file/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final blacklist ALLSHARE_FRAMEWORK_VERSION:J = 0x1L

.field public static final blacklist CP_NAME:Ljava/lang/String; = "com.samsung.android.allshare.CpName"

.field public static blacklist DEV_MODE:Z = false

.field public static final blacklist SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare.ServiceManager"

.field public static final blacklist SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare"

.field public static final blacklist SET_NAME_MESSAGE:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare.AllShareCpName"

.field public static final blacklist START_MESSAGE:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare.ServiceManager.START_COMPLETED"

.field public static final blacklist START_SERVICE:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare.ServiceManager.START_SERVICE"

.field public static final blacklist STOP_MESSAGE:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare.ServiceManager.STOP_COMPLETED"

.field public static final blacklist SUBSCRIBER_FIELD:Ljava/lang/String; = "com.sec.android.allshare.iface.subscriber"

.field public static final blacklist SUBSCRIPTION_MESSAGE:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare.SUBSCRIBE_SERVICE"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/allshare/file/Const;->DEV_MODE:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
