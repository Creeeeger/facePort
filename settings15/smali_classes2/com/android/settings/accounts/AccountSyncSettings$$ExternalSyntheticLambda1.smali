.class public final synthetic Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/accounts/AccountSyncSettings;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;Ljava/lang/CharSequence;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    sget v1, Lcom/android/settings/accounts/AccountSyncSettings;->$r8$clinit:I

    const v1, 0x7f140132

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    sget v1, Lcom/android/settings/accounts/AccountSyncSettings;->$r8$clinit:I

    const v1, 0x7f140224

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
