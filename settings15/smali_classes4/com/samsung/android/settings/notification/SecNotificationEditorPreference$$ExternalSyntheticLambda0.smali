.class public final synthetic Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/notification/SecNotificationEditorPreference;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/notification/SecNotificationEditorPreference;ZLjava/lang/String;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/SecNotificationEditorPreference;

    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$3:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/SecNotificationEditorPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference$$ExternalSyntheticLambda0;->f$3:Landroidx/preference/PreferenceViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x8cab

    const-string v2, "NSTE0039"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/settings/notification/SecNotificationEditorPreference;->newActivityStart$1(Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V

    :goto_0
    return-void
.end method
