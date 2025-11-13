.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->val$percentage:I

    const/16 p1, 0x64

    const-string p2, "TETH_013"

    if-lt p0, p1, :cond_0

    const-string p0, "8080"

    invoke-static {p2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "8079"

    invoke-static {p2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
