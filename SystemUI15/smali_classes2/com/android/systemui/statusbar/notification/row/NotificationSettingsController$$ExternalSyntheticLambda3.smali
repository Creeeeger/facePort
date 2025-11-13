.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->$r8$classId:I

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->BUBBLES_SETTING_URI:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$2:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->onSettingChanged(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->onSettingChanged(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
