.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    sget p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1424ac

    goto :goto_0

    :cond_0
    const p1, 0x7f1424ab

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonText(I)V

    return-void
.end method
