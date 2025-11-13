.class public final Lcom/android/settings/wifi/WifiDialog2$onStart$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiDialog2;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog2$onStart$1;->this$0:Lcom/android/settings/wifi/WifiDialog2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2$onStart$1;->this$0:Lcom/android/settings/wifi/WifiDialog2;

    const v0, 0x7f0a0ed1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "requireViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2$onStart$1;->this$0:Lcom/android/settings/wifi/WifiDialog2;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->listener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V

    return-void
.end method
