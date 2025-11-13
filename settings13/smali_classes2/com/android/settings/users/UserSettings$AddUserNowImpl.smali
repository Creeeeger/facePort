.class Lcom/android/settings/users/UserSettings$AddUserNowImpl;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddUserNowImpl"
.end annotation


# instance fields
.field mImplAddUserName:Ljava/lang/String;

.field mUserType:I

.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method public static synthetic $r8$lambda$Hj506aLDWH74HgxtVA0nQ7QJthY(Lcom/android/settings/users/UserSettings$AddUserNowImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->lambda$runAddUser$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/users/UserSettings;ILjava/lang/String;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    iput p2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mUserType:I

    .line 1146
    iput-object p3, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mImplAddUserName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$runAddUser$0()V
    .locals 0

    .line 1181
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$monUserCreationFailed(Lcom/android/settings/users/UserSettings;)V

    return-void
.end method

.method private runAddUser()V
    .locals 7

    .line 1159
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserLock(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mImplAddUserName:Ljava/lang/String;

    .line 1161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1164
    iget v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mUserType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->-$$Nest$mcreateTrustedUser(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->-$$Nest$mcreateRestrictedProfile(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1176
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserLock(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 1178
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v3}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmAddingUser(Lcom/android/settings/users/UserSettings;Z)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserIcon(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserName(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)V

    .line 1181
    new-instance v0, Lcom/android/settings/users/UserSettings$AddUserNowImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$AddUserNowImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserSettings$AddUserNowImpl;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1182
    monitor-exit v1

    return-void

    .line 1185
    :cond_1
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmPendingUserIcon(Lcom/android/settings/users/UserSettings;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1194
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1195
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1196
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1198
    :cond_2
    invoke-static {v5}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1199
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1203
    :goto_1
    iget v3, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mUserType:I

    if-ne v3, v2, :cond_3

    .line 1204
    iget-object v3, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1207
    :cond_3
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x2

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1210
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserIcon(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)V

    .line 1211
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserName(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)V

    .line 1212
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1161
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1151
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->runAddUser()V

    const-string p0, "UserSettings.addUserNow"

    const/4 v0, 0x0

    .line 1152
    invoke-static {p0, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
