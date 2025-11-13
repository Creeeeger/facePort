.class public final synthetic Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mTwoStepAuthenticationCallback:Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const p2, 0x7f1409b6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
