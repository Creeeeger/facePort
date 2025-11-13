.class public final Lcom/android/settings/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/notification/SettingPref;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/SettingPref;Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/notification/SettingPref$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget p1, p0, Lcom/android/settings/notification/SettingPref$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
