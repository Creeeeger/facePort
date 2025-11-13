.class final synthetic Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1$d$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string/jumbo v5, "startActivity(Ljava/lang/String;ILjava/lang/CharSequence;Landroid/content/Intent;)V"

    const/4 v6, 0x0

    const/4 v1, 0x4

    const-class v3, Lcom/android/systemui/privacy/PrivacyDialogController;

    const-string/jumbo v4, "startActivity"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/CharSequence;

    check-cast p4, Landroid/content/Intent;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/privacy/PrivacyDialogController;

    if-nez p4, :cond_0

    sget p3, Lcom/android/systemui/privacy/PrivacyDialogController;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroid/content/Intent;

    const-string p3, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p4, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-interface {p3, v0, p2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logStartSettingsActivityFromDialog(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    :cond_1
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x1

    invoke-interface {p0, p4, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
