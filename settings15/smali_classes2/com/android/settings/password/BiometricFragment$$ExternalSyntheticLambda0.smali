.class public final synthetic Lcom/android/settings/password/BiometricFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/BiometricFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/BiometricFragment;

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Lcom/android/settings/password/BiometricFragment$1;

    const/16 p1, 0xa

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/BiometricFragment$1;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
