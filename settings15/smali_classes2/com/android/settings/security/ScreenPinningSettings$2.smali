.class public final Lcom/android/settings/security/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/security/ScreenPinningSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/ScreenPinningSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings$2;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/16 p1, 0x11aa

    goto :goto_0

    :cond_0
    const/16 p1, 0x11ab

    :goto_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x56

    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result p0

    return p0
.end method
