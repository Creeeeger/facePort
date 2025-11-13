.class public final synthetic Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$1:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    return p0
.end method
