.class public final Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$3;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    check-cast p1, Landroid/credentials/SetEnabledProvidersException;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setEnabledProviders error: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/SetEnabledProvidersException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManagerPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    const-string p1, "CredentialManagerPreferenceController"

    const-string v0, "setEnabledProviders success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$3;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$mupdateFromExternal(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)V

    return-void
.end method
