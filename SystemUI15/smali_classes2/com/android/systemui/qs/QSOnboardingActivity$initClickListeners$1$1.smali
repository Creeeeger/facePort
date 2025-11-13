.class public final Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $state:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;->$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;->$state:Z

    invoke-static {p1, p0}, Lcom/android/systemui/qs/QSOnboardingActivity;->access$updatePanelSplit(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V

    return-void
.end method
