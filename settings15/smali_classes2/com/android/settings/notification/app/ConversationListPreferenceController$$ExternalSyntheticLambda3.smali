.class public final synthetic Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

.field public final synthetic f$1:Landroid/service/notification/ConversationChannelWrapper;

.field public final synthetic f$2:Lcom/android/settingslib/widget/AppPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settingslib/widget/AppPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iput-object p3, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;->f$2:Lcom/android/settingslib/widget/AppPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;->f$2:Lcom/android/settingslib/widget/AppPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    invoke-static {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->$r8$lambda$8Tk9FmWLidk-Z3TJ-pk0U4IpZ6M(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settingslib/widget/AppPreference;)V

    const/4 p0, 0x1

    return p0
.end method
