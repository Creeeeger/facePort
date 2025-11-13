.class Lcom/android/settings/MainClear$1$1;
.super Ljava/lang/Object;
.source "MainClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MainClear$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MainClear$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClear$1;Landroid/widget/EditText;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/android/settings/MainClear$1$1;->this$1:Lcom/android/settings/MainClear$1;

    iput-object p2, p0, Lcom/android/settings/MainClear$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 445
    iget-object p1, p0, Lcom/android/settings/MainClear$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p2, -0x7dfc1274

    if-ne p2, p1, :cond_0

    .line 447
    iget-object p0, p0, Lcom/android/settings/MainClear$1$1;->this$1:Lcom/android/settings/MainClear$1;

    iget-object p0, p0, Lcom/android/settings/MainClear$1;->this$0:Lcom/android/settings/MainClear;

    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    :cond_0
    return-void
.end method
