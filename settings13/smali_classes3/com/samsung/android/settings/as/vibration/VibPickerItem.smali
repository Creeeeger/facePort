.class public Lcom/samsung/android/settings/as/vibration/VibPickerItem;
.super Ljava/lang/Object;
.source "VibPickerItem.java"


# instance fields
.field mCategory:Ljava/lang/String;

.field final mData:Ljava/lang/String;

.field final mId:I

.field final mIsCustom:I

.field mItemType:I

.field final mName:Ljava/lang/String;

.field final mPattern:I

.field final mPosition:I

.field final mTitle:Ljava/lang/String;

.field mVibType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mId:I

    .line 40
    iput p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mPosition:I

    .line 41
    iput p4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mVibType:I

    .line 42
    iput p5, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mItemType:I

    .line 43
    iput-object p3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mName:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    .line 46
    iput p8, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mPattern:I

    .line 47
    iput-object p9, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mData:Ljava/lang/String;

    .line 48
    iput p10, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mIsCustom:I

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mId:I

    return p0
.end method

.method public getIsCustom()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mIsCustom:I

    return p0
.end method

.method public getItemType()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mItemType:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPattern()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mPattern:I

    return p0
.end method

.method public getPosition()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mPosition:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVibType()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mVibType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / vibType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mVibType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / patternIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / custom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->mIsCustom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
