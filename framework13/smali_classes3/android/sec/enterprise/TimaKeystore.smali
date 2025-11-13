.class public Landroid/sec/enterprise/TimaKeystore;
.super Ljava/lang/Object;
.source "TimaKeystore.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    const-string v0, "TimaKeystore"

    sput-object v0, Landroid/sec/enterprise/TimaKeystore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isTimaKeystoreEnabled()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    return v0
.end method
