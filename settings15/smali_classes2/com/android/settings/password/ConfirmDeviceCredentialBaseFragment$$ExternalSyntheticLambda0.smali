.class public final synthetic Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iput p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda0;->f$1:I

    sget v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->$r8$clinit:I

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
