.class public final synthetic Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, p0}, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->$r8$lambda$uX4VBi409To5Icn3MVa6zhyV16s(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, p0}, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->$r8$lambda$yvUhtreMoevisJWUelrI0BnQwnM(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
