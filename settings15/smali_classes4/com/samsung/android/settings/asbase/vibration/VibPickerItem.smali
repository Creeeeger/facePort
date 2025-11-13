.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCategory:Ljava/lang/String;

.field public final mData:Ljava/lang/String;

.field public final mId:I

.field public final mIsCustom:I

.field public final mItemType:I

.field public final mName:Ljava/lang/String;

.field public final mPattern:I

.field public mPosition:I

.field public final mTitle:Ljava/lang/String;

.field public final mVibType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mId:I

    iput p2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPosition:I

    iput p4, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mVibType:I

    iput p5, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mItemType:I

    iput-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mName:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    iput p8, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    iput-object p9, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mData:Ljava/lang/String;

    iput p10, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mIsCustom:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / vibType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mVibType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / patternIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / custom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mIsCustom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
