.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->$r8$clinit:I

    const-string p1, "WifiApRoundButtonPreference"

    const-string v0, "Button Clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    return-void
.end method
