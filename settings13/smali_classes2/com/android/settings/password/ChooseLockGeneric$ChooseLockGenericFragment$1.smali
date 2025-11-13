.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

.field final synthetic val$isChecked:Z

.field final synthetic val$preference:Landroidx/preference/Preference;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroidx/preference/Preference;ZI)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$preference:Landroidx/preference/Preference;

    iput-boolean p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$isChecked:Z

    iput p4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1089
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$preference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$isChecked:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1090
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$000(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$val:I

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result p0

    const-string/jumbo v0, "sf_reset_with_samsung_account"

    invoke-static {p1, v0, p2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
