.class Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;
.super Ljava/lang/Object;
.source "MaintenanceModeBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MaintenanceModeBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupMenuItem"
.end annotation


# static fields
.field public static final blacklist ITEM_ID_CLOUD:I = 0x0

.field public static final blacklist ITEM_ID_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field public final blacklist id:I

.field public final blacklist mainText:Ljava/lang/String;

.field public blacklist subText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "mainText"    # Ljava/lang/String;
    .param p3, "subText"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->id:I

    .line 66
    iput-object p2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->mainText:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->subText:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 73
    iget v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->id:I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    iget v2, v2, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->id:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 75
    :cond_1
    return v1
.end method
