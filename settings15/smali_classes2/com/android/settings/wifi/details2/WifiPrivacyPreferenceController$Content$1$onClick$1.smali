.class final Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Content$1$onClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Content$1$onClick$1;->this$0:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Content$1$onClick$1;->this$0:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;->access$getWifiEntryKey$p(Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Content$1$onClick$1;->this$0:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;

    sget-object v1, Lcom/android/settings/spa/SpaActivity;->Companion:Lcom/android/settings/spa/SpaActivity$Companion;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;->access$getMContext$p$s1785566730(Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "access$getMContext$p$s1785566730(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/wifi/details2/WifiPrivacyPageProvider;->INSTANCE:Lcom/android/settings/wifi/details2/WifiPrivacyPageProvider;

    const-string v1, "WifiPrivacy/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/spa/SpaActivity$Companion;->startSpaActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
