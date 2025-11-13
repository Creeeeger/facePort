.class Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;->this$0:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;->this$0:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-static {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->-$$Nest$fgetmKeyguardUpdateMonitorWrapper(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
