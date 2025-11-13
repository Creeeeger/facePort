.class public final Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
.super Ljava/lang/Object;
.source "BackupRestoreEventLogger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupRestoreEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataTypeResult"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataType:Ljava/lang/String;

.field private final blacklist mErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFailCount:I

.field private blacklist mMetadataHash:[B

.field private blacklist mSuccessCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I
    .locals 0

    iget p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I
    .locals 0

    iget p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V
    .locals 0

    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;[B)V
    .locals 0

    iput-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V
    .locals 0

    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;

    invoke-direct {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;-><init>()V

    sput-object v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    iput-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getErrors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getFailCount()I
    .locals 1

    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    return v0
.end method

.method public whitelist getMetadataHash()[B
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    return-object v0
.end method

.method public whitelist getSuccessCount()I
    .locals 1

    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
