.class Lcom/android/settings/security/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/ScreenPinningSettings;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningSettings;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 368
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    sget v0, Lcom/android/settings/R$string;->screen_pinning_unlock_none:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->getCurrentSecurityTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 369
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {v0}, Lcom/android/settings/security/ScreenPinningSettings;->getMetricsCategory()I

    move-result v0

    if-eqz p1, :cond_0

    const/16 p1, 0x11aa

    goto :goto_0

    :cond_0
    const/16 p1, 0x11ab

    .line 371
    :goto_0
    check-cast p2, Ljava/lang/Boolean;

    .line 372
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 369
    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 374
    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->-$$Nest$msetScreenLockUsed(Lcom/android/settings/security/ScreenPinningSettings;Z)Z

    move-result p0

    return p0
.end method
