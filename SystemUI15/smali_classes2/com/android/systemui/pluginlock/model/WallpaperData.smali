.class public Lcom/android/systemui/pluginlock/model/WallpaperData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field private mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field private mUpdateStyle:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_style"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mRecoverType:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mPath:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/WallpaperData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/WallpaperData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/WallpaperData;->clone()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/pluginlock/model/WallpaperData;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mId:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mId:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-nez p0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    if-eqz p0, :cond_8

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/WallpaperData;->mRecoverType:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateStyle()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mId:Ljava/lang/Integer;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setRecoverType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method

.method public setUpdateStyle(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    return-void
.end method
