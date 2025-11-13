.class public Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotInvitationConfig.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApAutoHotspotInvitationConfig"


# instance fields
.field private mExpiryTimeToAdd:J

.field private mGroupId:Ljava/lang/String;

.field private mProfileIconString:Ljava/lang/String;

.field private mRequestedTime:J

.field private mRequesterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiryTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mExpiryTimeToAdd:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mGroupId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 26
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string v0, "GroupId is NULL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public getPhoto(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 86
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string v1, "getPhoto - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mProfileIconString:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mProfileIconString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoto() - photoString BitmapFactory.decodeByteArray :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mProfileIconString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string v2, "getPhoto() - photo is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 103
    invoke-virtual {v1, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 104
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoto() - photo icon set for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mRequesterName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string p1, "getPhoto() - drawable is null, Setting default photo"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    :cond_3
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string p1, "getPhoto() - profileImage is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    .line 90
    :cond_4
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string p1, "getPhoto() - photoString is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getRequestedTime()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mRequestedTime:J

    return-wide v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mRequesterName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    const-string v0, "RequesterName is NULL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public printLog()V
    .locals 3

    .line 77
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invitation Config, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExpiryTime(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mExpiryTimeToAdd:J

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setProfileIconString(Ljava/lang/String;)V
    .locals 3

    .line 81
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set profile icon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mProfileIconString:Ljava/lang/String;

    return-void
.end method

.method public setRequestedTime(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mRequestedTime:J

    return-void
.end method

.method public setRequesterName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->mRequesterName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getRequesterName()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getRequestedTime()J

    move-result-wide v2

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getExpiryTime()J

    move-result-wide v4

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group ID = "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Requester Name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Requested Time = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", Expired Time = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
