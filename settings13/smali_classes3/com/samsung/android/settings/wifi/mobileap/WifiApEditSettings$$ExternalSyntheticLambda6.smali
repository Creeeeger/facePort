.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field public final synthetic f$1:Landroid/net/wifi/SoftApConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;->f$1:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda6;->f$1:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->$r8$lambda$vjb9e9SRC231qvG7onXx0fzkoeg(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Landroid/net/wifi/SoftApConfiguration;Landroid/content/DialogInterface;I)V

    return-void
.end method
