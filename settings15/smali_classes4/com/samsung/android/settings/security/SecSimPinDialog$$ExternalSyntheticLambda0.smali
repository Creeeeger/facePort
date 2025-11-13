.class public final synthetic Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/security/SecSimPinDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/security/SecSimPinDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/security/SecSimPinDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
