.class public final synthetic Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;->f$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;->f$0:Landroid/content/res/Resources;

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f1416e2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const v0, 0x7f141ea9    # 1.9688494E38f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
