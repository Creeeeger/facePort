.class public final Lcom/android/keyguard/KeyguardSimPersoViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method
