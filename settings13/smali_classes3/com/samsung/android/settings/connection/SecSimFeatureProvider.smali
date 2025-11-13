.class public interface abstract Lcom/samsung/android/settings/connection/SecSimFeatureProvider;
.super Ljava/lang/Object;
.source "SecSimFeatureProvider.java"


# virtual methods
.method public abstract getDeviceSimSlotCnt()I
.end method

.method public abstract getEnabledSimCnt()I
.end method

.method public abstract getFirstSlotIndex()I
.end method

.method public abstract getNtcRawData(I)Ljava/lang/String;
.end method

.method public abstract getSimIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSimNumeric(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimSlotName(I)Ljava/lang/String;
.end method

.method public abstract getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isLraImsi(I)Z
.end method

.method public abstract isMultiSimModel()Z
.end method

.method public abstract isSPRSimInserted(I)Z
.end method

.method public abstract isUSCSimInserted(I)Z
.end method

.method public abstract isVZWSimInserted(I)Z
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
