.class public final Landroid/service/autofill/augmented/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/autofill/augmented/FillCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    return-void
.end method


# virtual methods
.method public whitelist onSuccess(Landroid/service/autofill/augmented/FillResponse;)V
    .locals 6

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/service/autofill/augmented/FillWindow;->show()V

    const/4 v3, 0x1

    :cond_3
    :goto_0
    iget-object v4, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v4, v0, v1, v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V

    return-void
.end method
