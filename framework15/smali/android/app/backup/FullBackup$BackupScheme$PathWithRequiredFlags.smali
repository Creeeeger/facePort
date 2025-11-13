.class public Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup$BackupScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathWithRequiredFlags"
.end annotation


# instance fields
.field private final greylist-max-o mPath:Ljava/lang/String;

.field private final greylist-max-o mRequiredFlags:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mPath:Ljava/lang/String;

    iput p2, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mRequiredFlags:I

    return-void
.end method


# virtual methods
.method public greylist-max-o getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRequiredFlags()I
    .locals 1

    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mRequiredFlags:I

    return v0
.end method
