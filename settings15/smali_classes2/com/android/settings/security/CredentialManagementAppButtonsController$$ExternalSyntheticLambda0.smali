.class public final synthetic Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppButtonsController;

.field public final synthetic f$1:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppButtonsController;Landroidx/preference/PreferenceScreen;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppButtonsController;

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppButtonsController;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    invoke-static {v0, p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->$r8$lambda$N04V9o0JTA0qkac9S-BL8u07wUY(Lcom/android/settings/security/CredentialManagementAppButtonsController;Landroidx/preference/PreferenceScreen;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppButtonsController;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    invoke-static {v0, p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->$r8$lambda$Uf_PgkyfOzV9hJtzJbenEQmKFt8(Lcom/android/settings/security/CredentialManagementAppButtonsController;Landroidx/preference/PreferenceScreen;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
