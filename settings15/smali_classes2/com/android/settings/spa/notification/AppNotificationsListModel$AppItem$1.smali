.class final Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/spa/notification/AppNotificationsListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;->this$0:Lcom/android/settings/spa/notification/AppNotificationsListModel;

    iput-object p2, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;->this$0:Lcom/android/settings/spa/notification/AppNotificationsListModel;

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/settings/notification/app/AppNotificationSettings;

    iget-object v2, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->context:Landroid/content/Context;

    const v3, 0x7f141b2a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->context:Landroid/content/Context;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "package"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "uid"

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v4, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 v0, 0x85

    iput v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
