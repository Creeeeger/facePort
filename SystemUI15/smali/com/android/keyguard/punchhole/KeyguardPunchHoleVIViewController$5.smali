.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 6

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget v2, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const-string v4, " -> "

    if-eqz v3, :cond_0

    if-eq v2, p1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigChanged() display device type "

    invoke-static {v2, p1, v1, v4, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iput p1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfig()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    if-eq p1, v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p1, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigChanged() density "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    const-string v5, ", direction "

    invoke-static {v2, v3, v4, v0, v5}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    invoke-static {v2, v3, v4, v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1700(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocation()V

    :cond_2
    :goto_0
    return-void
.end method
