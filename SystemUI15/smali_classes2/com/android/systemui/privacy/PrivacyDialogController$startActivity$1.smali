.class public final Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStarted(I)V
    .locals 0

    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
