.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

.field public final synthetic f$1:Landroid/app/NotificationChannel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/app/NotificationChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;->f$2:I

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;->onClick()V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v2, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
