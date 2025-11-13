.class public final synthetic Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v0, 0x7f1408f8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v0, 0x7f1408f9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v0, 0x7f1408fc

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
