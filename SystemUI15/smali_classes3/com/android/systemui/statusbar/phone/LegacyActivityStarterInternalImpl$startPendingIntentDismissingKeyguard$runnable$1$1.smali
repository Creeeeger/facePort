.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$PendingIntentStarter;


# instance fields
.field public final synthetic $extraOptions:Landroid/os/Bundle;

.field public final synthetic $fillInIntent:Landroid/content/Intent;

.field public final synthetic $intent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->$intent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->$fillInIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->$extraOptions:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startPendingIntent(Landroid/view/RemoteAnimationAdapter;)I
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->displayId:I

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->$extraOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Landroid/app/ActivityOptions;

    invoke-direct {v1, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setEligibleForLegacyPermissionPrompt(Z)V

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->$intent:Landroid/app/PendingIntent;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1$1;->$fillInIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method
