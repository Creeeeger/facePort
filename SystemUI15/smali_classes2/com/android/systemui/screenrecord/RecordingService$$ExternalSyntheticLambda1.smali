.class public final synthetic Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/RecordingService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$2:Landroid/os/UserHandle;

    sget v2, Lcom/android/systemui/screenrecord/RecordingService;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v3, 0x7f130ff2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 p0, 0x0

    return p0
.end method
