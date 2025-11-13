.class public final synthetic Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
