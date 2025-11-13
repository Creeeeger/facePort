.class public final synthetic Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
