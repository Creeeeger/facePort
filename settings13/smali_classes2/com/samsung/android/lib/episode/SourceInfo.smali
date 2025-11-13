.class public Lcom/samsung/android/lib/episode/SourceInfo;
.super Ljava/lang/Object;
.source "SourceInfo.java"


# instance fields
.field private mDTDVersion:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mManufacturer:I

.field private mOSVersion:I

.field private mOneUIVersion:Ljava/lang/String;

.field private mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestFrom:I

.field private mRestoreViaFastTrack:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    .line 25
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    .line 26
    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    .line 25
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    .line 26
    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "deviceType"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v0, "version"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string v0, "dtd_version"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const-string/jumbo v0, "requestFrom"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    const-string v0, "fastTrack"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const-string v0, "OSVersion"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    const-string/jumbo v0, "oneUIVersion"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    const-string/jumbo v0, "packageList"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->decompressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    const-string v0, "manufacturer"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    .line 25
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    .line 26
    iput v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    .line 33
    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturer()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return p0
.end method

.method public getOSVersion()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    return p0
.end method

.method public getOneUIVersion()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 121
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public isRestoreViaFastTrack()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    return p0
.end method

.method public setDTDVersion(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    return-void
.end method

.method public setOSVersion(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    return-void
.end method

.method public setOneUIVersion(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    return-void
.end method

.method public setPackageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRequestFrom(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    return-void
.end method

.method public setRestoreViaFastTrack(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
