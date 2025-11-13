.class public final synthetic Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardNotifIconTint:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconTint:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
