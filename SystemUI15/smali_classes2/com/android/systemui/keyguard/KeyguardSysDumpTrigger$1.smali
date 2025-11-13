.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.salab.issuetracker"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result p0

    const-string v0, "isInstalled: "

    const-string v1, "KeyguardSysDumpTrigger"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
