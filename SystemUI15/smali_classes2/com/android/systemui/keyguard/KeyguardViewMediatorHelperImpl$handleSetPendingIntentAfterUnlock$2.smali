.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $fIntent:Landroid/content/Intent;

.field public final synthetic $pIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;->$pIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;->$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;->$pIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;->$fIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method
