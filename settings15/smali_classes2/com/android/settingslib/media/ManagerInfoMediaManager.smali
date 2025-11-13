.class public abstract Lcom/android/settingslib/media/ManagerInfoMediaManager;
.super Lcom/android/settingslib/media/InfoMediaManager;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ManagerInfoMediaManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->DEBUG:Z

    return-void
.end method
