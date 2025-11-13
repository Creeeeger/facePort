.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformationRequester;
.super Ljava/lang/Object;
.source "PermissionAccessInformationRequester.java"


# static fields
.field private static final blacklist VERSION:Ljava/lang/String; = "1.0.0"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static blacklist request(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 16
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->requestPermissionAccessInformation()V

    .line 17
    return-void
.end method
