.class public final Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$shouldSetActivityResult:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;->val$shouldSetActivityResult:Z

    return-void
.end method


# virtual methods
.method public final onDialogClick(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;->val$shouldSetActivityResult:Z

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->completeEnableProviderDialogBox(ILjava/lang/String;Z)I

    return-void
.end method
