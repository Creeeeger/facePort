.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final greylist-max-o mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillManagerClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$authenticate$5(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->-$$Nest$mauthenticate(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$autofillContent$4(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofillContent(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchUnhandledKey$13(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mdispatchUnhandledKey(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAugmentedAutofillClient$18(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetAugmentedAutofillClient(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyDisableAutofill$12(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyDisableAutofill(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillDialogTriggerIds$20(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetFillDialogTriggerIds(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillUiHidden$11(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillUiShown$10(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyNoFillUi$9(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyNoFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGetCredentialException$3(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$monGetCredentialException(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGetCredentialResponse$2(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$monGetCredentialResponse(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestHideFillUi$7(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$requestHideFillUiWhenDestroyed$8(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowFillUi$6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowSoftInput$19(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowSoftInput(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSaveUiState$16(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetSaveUiState(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method static synthetic blacklist lambda$setSessionFinished$17(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetSessionFinished(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$setState$0(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetState(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrackedViews$15(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetTrackedViews(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic blacklist lambda$startIntentSender$14(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 9

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v8, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    invoke-static {v0, v8}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda9;

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda9;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda15;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;-><init>(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;-><init>(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist notifyFillDialogTriggerIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda11;-><init>(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda19;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda6;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda5;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda10;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_0

    new-instance v10, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda12;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda12;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda14;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setSaveUiState(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda16;-><init>(Landroid/view/autofill/AutofillManager;IZ)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist setSessionFinished(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda13;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setState(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda18;-><init>(Landroid/view/autofill/AutofillManager;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_0

    new-instance v10, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda17;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda17;-><init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda20;-><init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
