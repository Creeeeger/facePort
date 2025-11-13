.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 3

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->pm:Landroid/content/pm/PackageManager;

    const-string v1, "com.nttdocomo.android.mascot"

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "isMascotAppRunning : Mascot is stopped."

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    move v0, p1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z

    const-string v0, "Not installed MASCOT_PACKAGE"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz v0, :cond_3

    const/16 p1, 0x8

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_4
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sUseCachedIsDcmLauncher:Z

    return-void
.end method
