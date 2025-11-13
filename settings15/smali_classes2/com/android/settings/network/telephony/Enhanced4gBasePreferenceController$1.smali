.class public final Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

.field public final synthetic val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;->val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "Enhanced4g"

    const-string p2, "onClick,isChecked:false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;->val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->-$$Nest$msetAdvancedCallingSettingEnabled(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
