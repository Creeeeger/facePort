.class public final Lcom/android/systemui/wallpaper/BackupRestoreReceiver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBroadcastReceiver:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

.field public final mHandler:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;-><init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mHandler:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;

    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;-><init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mBroadcastReceiver:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

    return-void
.end method
