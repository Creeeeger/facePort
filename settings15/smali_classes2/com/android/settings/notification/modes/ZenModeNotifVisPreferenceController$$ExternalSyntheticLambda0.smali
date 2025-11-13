.class public final synthetic Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/service/notification/ZenPolicy$Builder;

    iget v0, v0, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;->mEffect:I

    invoke-virtual {p1, v0, p0}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    return-object p0
.end method
