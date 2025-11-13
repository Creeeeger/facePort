.class public final Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCurrentUserId:I

.field public final mManagedProfileUser:Landroid/content/pm/UserInfo;

.field public final mPrivateUser:Landroid/content/pm/UserInfo;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVisibleUserIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mPrivateUser:Landroid/content/pm/UserInfo;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mManagedProfileUser:Landroid/content/pm/UserInfo;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mCurrentUserId:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mCurrentUserId:I

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mManagedProfileUser:Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mPrivateUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method
