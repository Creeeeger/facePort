.class public final synthetic Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/internal/statusbar/NotificationVisibility;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/widget/LaunchConversationActivity;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

    iput-object p2, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$4:Lcom/android/internal/statusbar/NotificationVisibility;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

    iget-object v2, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$4:Lcom/android/internal/statusbar/NotificationVisibility;

    sget p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception cancelling notification:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PeopleSpaceLaunchConv"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
