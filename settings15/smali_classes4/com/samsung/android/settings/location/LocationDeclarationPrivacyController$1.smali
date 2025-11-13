.class public final Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController$1;->this$0:Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.clocationservice.action.show_location_consent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController$1;->this$0:Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;->access$000(Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController$1;->this$0:Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;

    invoke-static {p0}, Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;->access$100(Lcom/samsung/android/settings/location/LocationDeclarationPrivacyController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
