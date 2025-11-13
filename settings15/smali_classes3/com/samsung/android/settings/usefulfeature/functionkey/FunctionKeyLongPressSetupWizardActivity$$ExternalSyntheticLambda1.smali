.class public final synthetic Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    sget p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->$r8$clinit:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
