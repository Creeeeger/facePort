.class public final synthetic Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->$r8$lambda$wI0yZPbjwmretWfozxHBppIYuVo(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;)Lcom/android/settingslib/widget/AppPreference;

    move-result-object p0

    return-object p0
.end method
