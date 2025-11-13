.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(IZ)V

    return-void
.end method
