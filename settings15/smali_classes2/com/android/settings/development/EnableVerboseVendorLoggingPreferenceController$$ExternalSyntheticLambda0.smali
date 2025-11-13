.class public final synthetic Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
