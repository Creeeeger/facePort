.class public final synthetic Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->$r8$lambda$TX8DIJ6kP_AqZdFFsvYHGVJyh08(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method
