.class public final synthetic Lcom/android/settings/password/ForgotPasswordActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ForgotPasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ForgotPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ForgotPasswordActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/password/ForgotPasswordActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ForgotPasswordActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/password/ForgotPasswordActivity;

    sget p1, Lcom/android/settings/password/ForgotPasswordActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
