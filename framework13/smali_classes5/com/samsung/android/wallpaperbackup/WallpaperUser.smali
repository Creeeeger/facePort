.class public Lcom/samsung/android/wallpaperbackup/WallpaperUser;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    }
.end annotation


# instance fields
.field private blacklist mComponent:Ljava/lang/String;

.field private blacklist mDeviceType:Ljava/lang/String;

.field private blacklist mExternalParams:Ljava/lang/String;

.field private blacklist mHeight:I

.field private blacklist mOrientation:I

.field private blacklist mPath:Ljava/lang/String;

.field private blacklist mTiltSetting:I

.field private blacklist mTransparency:I

.field private blacklist mUri:Landroid/net/Uri;

.field private blacklist mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

.field private blacklist mWidth:I

.field private blacklist mWpType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 40
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 41
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    .line 46
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    .line 51
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 56
    iput p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    .line 61
    iput-object p5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    .line 63
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    .line 65
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist getBottomValue()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    return v0
.end method

.method public blacklist getComponent()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceType()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExternalParams()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    return v0
.end method

.method public blacklist getLeftValue()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    return v0
.end method

.method public blacklist getOrientation()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    return v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRightValue()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    return v0
.end method

.method public blacklist getRotationValue()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    return v0
.end method

.method public blacklist getTiltSettingValue()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    return v0
.end method

.method public blacklist getTopValue()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    return v0
.end method

.method public blacklist getTransparency()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getWallpaperData()Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    return v0
.end method

.method public blacklist getWpType()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    return v0
.end method

.method public blacklist setBottomValue(I)V
    .locals 1
    .param p1, "bottom"    # I

    .line 125
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    .line 126
    return-void
.end method

.method public blacklist setComponent(Ljava/lang/String;)V
    .locals 0
    .param p1, "component"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public blacklist setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public blacklist setExternalParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 73
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 74
    return-void
.end method

.method public blacklist setLeftValue(I)V
    .locals 1
    .param p1, "left"    # I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    .line 114
    return-void
.end method

.method public blacklist setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 97
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    .line 98
    return-void
.end method

.method public blacklist setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public blacklist setRightValue(I)V
    .locals 1
    .param p1, "right"    # I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    .line 122
    return-void
.end method

.method public blacklist setRotationValue(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    .line 130
    return-void
.end method

.method public blacklist setTiltSettingValue(I)V
    .locals 0
    .param p1, "tiltSetting"    # I

    .line 134
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    .line 135
    return-void
.end method

.method public blacklist setTopValue(I)V
    .locals 1
    .param p1, "top"    # I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    .line 118
    return-void
.end method

.method public blacklist setTransparency(I)V
    .locals 0
    .param p1, "type"    # I

    .line 105
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    .line 106
    return-void
.end method

.method public blacklist setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    .line 90
    return-void
.end method

.method public blacklist setWallpaperData(Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 109
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 110
    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 69
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 70
    return-void
.end method

.method public blacklist setWpType(I)V
    .locals 0
    .param p1, "wpType"    # I

    .line 85
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    .line 86
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tWallpaperUser:\n\t\tmWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmTransparency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmDeviceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmComponent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmWpType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmTiltSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmWallpaperData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
