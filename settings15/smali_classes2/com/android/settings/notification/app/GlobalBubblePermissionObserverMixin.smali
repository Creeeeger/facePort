.class public final Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mListener:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mListener:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    :cond_0
    return-void
.end method
