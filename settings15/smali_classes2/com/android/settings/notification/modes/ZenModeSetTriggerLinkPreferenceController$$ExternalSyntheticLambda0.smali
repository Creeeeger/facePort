.class public final synthetic Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    move-result p0

    return p0
.end method
