.class public final synthetic Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/accessibility/MagnificationModePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/MagnificationModePreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/MagnificationModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/MagnificationModePreferenceController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->onMagnificationTripleTapWarningDialogNegativeButtonClicked(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->onMagnificationTripleTapWarningDialogPositiveButtonClicked(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->onMagnificationModeDialogPositiveButtonClicked(Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
