.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;->onGetInstalledPackageNameUnmodifiableSet(Ljava/util/Set;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->getInstalledPackageNameUnmodifiableSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$InstalledApplicationsListener;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
