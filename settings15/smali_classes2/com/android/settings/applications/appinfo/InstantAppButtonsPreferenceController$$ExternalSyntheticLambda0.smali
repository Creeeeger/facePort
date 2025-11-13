.class public final synthetic Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->$r8$lambda$azOrEG4B_Y3NbBcxDafmKsmJ7Oo(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->$r8$lambda$f9UnLGr53JKc4YgZzY5jzgxJXlM(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
