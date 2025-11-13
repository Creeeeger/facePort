.class public Landroid/content/SemSyncStatusInfo;
.super Ljava/lang/Object;
.source "SemSyncStatusInfo.java"


# instance fields
.field public whitelist initialize:Z

.field public whitelist lastFailureTime:J

.field public whitelist lastSuccessTime:J

.field public whitelist pending:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/SyncStatusInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput-wide v0, p0, Landroid/content/SemSyncStatusInfo;->lastSuccessTime:J

    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput-wide v0, p0, Landroid/content/SemSyncStatusInfo;->lastFailureTime:J

    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->pending:Z

    iput-boolean v0, p0, Landroid/content/SemSyncStatusInfo;->pending:Z

    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    iput-boolean v0, p0, Landroid/content/SemSyncStatusInfo;->initialize:Z

    return-void
.end method
