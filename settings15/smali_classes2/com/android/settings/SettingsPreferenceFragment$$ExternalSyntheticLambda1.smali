.class public final synthetic Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/SettingsPreferenceFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/SettingsPreferenceFragment;

    iput p2, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/SettingsPreferenceFragment;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
