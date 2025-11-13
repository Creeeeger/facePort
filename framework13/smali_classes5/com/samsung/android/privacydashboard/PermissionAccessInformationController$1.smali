.class Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;
.super Ljava/lang/Object;
.source "PermissionAccessInformationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;->this$0:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;->this$0:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-virtual {v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PermissionAccessInformationController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
