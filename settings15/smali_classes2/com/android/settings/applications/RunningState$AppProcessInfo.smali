.class public final Lcom/android/settings/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public hasForegroundServices:Z

.field public hasServices:Z

.field public final info:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-void
.end method
