.class public final synthetic Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/core/AbstractPreferenceController;Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
