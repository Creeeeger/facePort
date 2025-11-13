.class Lcom/android/keyguard/KeyguardFMMViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardFMMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoteLockInfoChanged()V
    .locals 2

    const-string v0, "KeyguardFMMView"

    const-string v1, "onRemoteLockInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    return-void
.end method
