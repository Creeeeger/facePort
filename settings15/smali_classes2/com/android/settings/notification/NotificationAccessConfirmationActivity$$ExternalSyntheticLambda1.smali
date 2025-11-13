.class public final synthetic Lcom/android/settings/notification/NotificationAccessConfirmationActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/notification/NotificationAccessConfirmationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/NotificationAccessConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/NotificationAccessConfirmationActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
