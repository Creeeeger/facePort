.class public final Lcom/android/settingslib/location/SettingsInjector$Setting;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final preference:Landroidx/preference/Preference;

.field public final setting:Lcom/android/settingslib/location/InjectedSetting;

.field public startMillis:J

.field public final synthetic this$0:Lcom/android/settings/location/AppSettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/AppSettingsInjector;Lcom/android/settingslib/location/InjectedSetting;Lcom/android/settingslib/widget/AppPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/AppSettingsInjector;

    iput-object p2, p0, Lcom/android/settingslib/location/SettingsInjector$Setting;->setting:Lcom/android/settingslib/location/InjectedSetting;

    iput-object p3, p0, Lcom/android/settingslib/location/SettingsInjector$Setting;->preference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting{setting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/location/SettingsInjector$Setting;->setting:Lcom/android/settingslib/location/InjectedSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector$Setting;->preference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
