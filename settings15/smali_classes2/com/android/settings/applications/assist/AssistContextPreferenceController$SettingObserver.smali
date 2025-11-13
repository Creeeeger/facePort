.class public final Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/applications/assist/AssistContextPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    const-string p1, "assist_structure_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getSettingUris()Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final onSettingChange()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference$1()V

    return-void
.end method
