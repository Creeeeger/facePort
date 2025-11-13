.class public Lcom/samsung/android/knox/container/LightweightConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/LightweightConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "LightweightConfigurationType"


# instance fields
.field public mFolderDisabledChangeLayout:Ljava/lang/String;

.field public mFolderHeaderIcon:Ljava/lang/String;

.field public mFolderHeaderTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/LightweightConfigurationType$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, v0

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, p1

    :cond_5
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/LightweightConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/LightweightConfigurationType;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "LightweightConfigurationType"

    const-string p1, "clone(): name is either null or empty, hence returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Lightweight config dump START:"

    const-string v1, "LightweightConfigurationType"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mFolderHeaderIcon : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mFolderHeaderTitle : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mFolderDisabledChangeLayout : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const-string p0, "Lightweight config dump END."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFolderDisabledChangeLayout()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderHeaderIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderHeaderTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setFolderDisabledChangeLayout(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    return-void
.end method

.method public setFolderHeaderIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    return-void
.end method

.method public setFolderHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
