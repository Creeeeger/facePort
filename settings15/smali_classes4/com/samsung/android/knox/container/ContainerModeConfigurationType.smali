.class public Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/ContainerModeConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ContainerModeConfigurationType"


# instance fields
.field public mAllowClearAllNotification:Z

.field public mAllowHomeKey:Z

.field public mAllowSettingsChanges:Z

.field public mAllowStatusBarExpansion:Z

.field public mHideSystemBar:Z

.field public mWipeRecentTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method


# virtual methods
.method public allowClearAllNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    return-void
.end method

.method public allowHomeKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    return-void
.end method

.method public allowSettingsChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    return-void
.end method

.method public allowStatusBarExpansion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    return-void
.end method

.method public clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "ContainerModeConfigurationType"

    const-string p1, "clone(): name is either null or empty, hence returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dumpState()V
    .locals 4

    const-string v0, "COM config dump START:"

    const-string v1, "ContainerModeConfigurationType"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAllowSettingsChanges : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    const-string v3, "mAllowStatusBarExpansion : "

    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    const-string v3, "mAllowHomeKey : "

    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    const-string v3, "mAllowClearAllNotification : "

    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    const-string v3, "mHideSystemBar : "

    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    const-string v3, "mWipeRecentTasks : "

    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const-string p0, "COM config dump END."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isClearAllNotificationAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    return p0
.end method

.method public isHideSystemBarEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    return p0
.end method

.method public isHomeKeyAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    return p0
.end method

.method public isSettingChangesAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    return p0
.end method

.method public isStatusBarExpansionAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    return p0
.end method

.method public isWipeRecentTasksEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    return p0
.end method

.method public setHideSystemBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    return-void
.end method

.method public setWipeRecentTasks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
