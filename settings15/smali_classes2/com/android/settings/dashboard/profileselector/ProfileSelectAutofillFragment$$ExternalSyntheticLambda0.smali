.class public final synthetic Lcom/android/settings/dashboard/profileselector/ProfileSelectAutofillFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectAutofillFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructAndGetFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    iget p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectAutofillFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;

    invoke-direct {p0}, Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;

    invoke-direct {p0}, Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/general/AutofillPickerPersonalFragment;

    invoke-direct {p0}, Lcom/samsung/android/settings/general/AutofillPickerPersonalFragment;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
