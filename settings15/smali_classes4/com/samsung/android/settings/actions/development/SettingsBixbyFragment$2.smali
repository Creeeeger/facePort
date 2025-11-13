.class public final Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment$2;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget p1, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment$2;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;->replaceFeature(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
