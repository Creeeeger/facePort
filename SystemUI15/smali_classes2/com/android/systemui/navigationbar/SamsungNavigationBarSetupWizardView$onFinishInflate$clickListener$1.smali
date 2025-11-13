.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;->this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;->this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->sendEvent$default(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;->this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->sendEvent$default(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;I)V

    return-void
.end method
