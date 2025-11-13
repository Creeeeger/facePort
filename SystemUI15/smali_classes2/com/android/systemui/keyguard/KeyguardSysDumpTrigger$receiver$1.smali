.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz v0, :cond_5

    const-string p2, "com.salab.issuetracker"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    goto :goto_1

    :cond_3
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result p0

    const-string p1, "pkg receiver "

    const-string p2, "KeyguardSysDumpTrigger"

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_2
    return-void
.end method
