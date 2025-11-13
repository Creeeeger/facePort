.class public final Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;

    return-void
.end method


# virtual methods
.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->savePolicy(Ljava/util/function/Function;)Z

    return-void
.end method
