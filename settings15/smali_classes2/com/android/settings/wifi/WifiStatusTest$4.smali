.class public final Lcom/android/settings/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v1, v0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
