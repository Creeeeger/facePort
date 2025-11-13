.class public final Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cardId:I

.field public final carrierId:I

.field public final carrierName:Ljava/lang/String;

.field public final countryIso:Ljava/lang/String;

.field public final dataRoaming:I

.field public final displayName:Ljava/lang/String;

.field public final formattedPhoneNumber:Ljava/lang/String;

.field public final groupUUID:Ljava/lang/String;

.field public final isActiveDataSubscriptionId:Z

.field public final isActiveSubscriptionId:Z

.field public final isAvailableSubscription:Z

.field public final isDefaultSubscriptionSelection:Z

.field public final isEmbedded:Z

.field public final isFirstRemovableSubscription:Z

.field public final isOpportunistic:Z

.field public final isSubscriptionVisible:Z

.field public final isUsableSubscription:Z

.field public final isValidSubscription:Z

.field public final mcc:Ljava/lang/String;

.field public final mnc:Ljava/lang/String;

.field public final portIndex:I

.field public final simSlotIndex:I

.field public final subId:Ljava/lang/String;

.field public final subscriptionType:I

.field public final uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;ILjava/lang/String;ZLjava/lang/String;ZZZZZZZ)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->simSlotIndex:I

    move v1, p3

    iput v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierId:I

    move-object v1, p4

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->displayName:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierName:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->dataRoaming:I

    move-object v1, p7

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mcc:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mnc:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->countryIso:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    move v1, p11

    iput v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->cardId:I

    move v1, p12

    iput v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->portIndex:I

    move v1, p13

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->groupUUID:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subscriptionType:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->formattedPhoneNumber:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isFirstRemovableSubscription:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isUsableSubscription:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isAvailableSubscription:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v1, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->simSlotIndex:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->simSlotIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierId:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->dataRoaming:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->dataRoaming:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mcc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mcc:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mnc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mnc:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->countryIso:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->countryIso:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->cardId:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->cardId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->portIndex:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->portIndex:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->groupUUID:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->groupUUID:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subscriptionType:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subscriptionType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->formattedPhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->formattedPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isFirstRemovableSubscription:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isFirstRemovableSubscription:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isUsableSubscription:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isUsableSubscription:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isAvailableSubscription:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isAvailableSubscription:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    iget-boolean p1, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getSubId()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->simSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->dataRoaming:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->cardId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->portIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subscriptionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isFirstRemovableSubscription:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isUsableSubscription:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isAvailableSubscription:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    iget-boolean v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget-object v2, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->displayName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mcc:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mnc:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->countryIso:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->groupUUID:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->formattedPhoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    filled-new-array/range {v2 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {SubscriptionInfoEntity(subId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", simSlotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->simSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->dataRoaming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryIso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEmbedded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cardId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->cardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->portIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isOpportunistic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", groupUUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->groupUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subscriptionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uniqueName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSubscriptionVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", formattedPhoneNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->formattedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstRemovableSubscription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isFirstRemovableSubscription:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultSubscriptionSelection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValidSubscription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUsableSubscription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isUsableSubscription:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isActiveSubscriptionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailableSubscription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isAvailableSubscription:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isActiveDataSubscriptionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    const-string v1, ")}"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
