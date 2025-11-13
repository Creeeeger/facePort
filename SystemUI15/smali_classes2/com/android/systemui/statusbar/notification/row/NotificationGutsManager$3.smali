.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const-string v1, "notification_panel_show_favorite_app_notifications"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFavoriteSectionSettingsLists:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mInvalidateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->onUpdateNotifStack()V

    return-void
.end method
