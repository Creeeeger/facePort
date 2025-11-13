.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field public final synthetic f$1:Landroid/net/wifi/SoftApConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;->f$1:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda7;->f$1:Landroid/net/wifi/SoftApConfiguration;

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->saveNewConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method
