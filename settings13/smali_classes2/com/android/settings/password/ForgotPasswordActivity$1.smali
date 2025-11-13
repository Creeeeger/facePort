.class Lcom/android/settings/password/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ForgotPasswordActivity;->setWorkChallengeBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ForgotPasswordActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/password/ForgotPasswordActivity$1;->this$0:Lcom/android/settings/password/ForgotPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/password/ForgotPasswordActivity$1;->this$0:Lcom/android/settings/password/ForgotPasswordActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
