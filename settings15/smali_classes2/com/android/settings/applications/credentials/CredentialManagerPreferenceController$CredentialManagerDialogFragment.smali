.class public abstract Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$CredentialManagerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mDialogHost:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$CredentialManagerDialogFragment;->mDialogHost:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$CredentialManagerDialogFragment;->mDialogHost:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
