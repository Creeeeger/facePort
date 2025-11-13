.class public final Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;

    return-void
.end method


# virtual methods
.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method
