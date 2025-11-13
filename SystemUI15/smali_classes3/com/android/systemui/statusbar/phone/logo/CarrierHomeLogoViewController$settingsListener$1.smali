.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$settingsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$settingsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCarrierLogoEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->settingEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isCarrierLogoEnabled()Z

    move-result p0

    const-string p1, "Carrier logo setting changed="

    const-string v0, "CarrierHomeLogoViewController"

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
