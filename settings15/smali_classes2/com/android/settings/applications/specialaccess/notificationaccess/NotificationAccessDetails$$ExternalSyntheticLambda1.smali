.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

.field public final synthetic f$1:Lcom/android/settings/notification/NotificationBackend;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;II)V
    .locals 0

    iput p4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/notification/NotificationBackend;

    iput p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/notification/NotificationBackend;

    iget p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setServiceInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget v0, v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setTargetSdk(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/notification/NotificationBackend;

    iget p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;II)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
