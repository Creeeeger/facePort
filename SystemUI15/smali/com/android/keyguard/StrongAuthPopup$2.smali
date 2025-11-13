.class public final Lcom/android/keyguard/StrongAuthPopup$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/StrongAuthPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$2;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$2;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    iget-object p1, p1, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/StrongAuthPopup$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/StrongAuthPopup$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
