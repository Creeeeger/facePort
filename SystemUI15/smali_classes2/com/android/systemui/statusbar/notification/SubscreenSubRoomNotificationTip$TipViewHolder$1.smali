.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const-string p1, "SubscreenSubRoomNotificationTip"

    const-string/jumbo v0, "settings button click"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.aodservice.intent.action.COVER_SCREEN_SETTING"

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, ":settings:fragment_args_key"

    const-string/jumbo v0, "subscreen_show_notification"

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0xc000000

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "showCoverToast"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method
