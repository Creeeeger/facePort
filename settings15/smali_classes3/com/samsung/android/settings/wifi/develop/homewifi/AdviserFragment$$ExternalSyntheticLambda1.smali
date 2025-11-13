.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/StringBuilder;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "\n"

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_0
    sget-object v1, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_1
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_2
    sget-object v1, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_3
    sget-object v1, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
