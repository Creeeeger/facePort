.class public final synthetic Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iput p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/widget/LockscreenCredential;

    iput p5, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/widget/LockscreenCredential;

    iget v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->$r8$lambda$fplSpTP18Y6tJ58VXMOep5PG4ak(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method
