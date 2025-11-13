.class public abstract Landroidx/picker/util/SeslSleepTimePickerUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static convertToTime(F)F
    .locals 2

    const/high16 v0, 0x40200000    # 2.5f

    div-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x43870000    # 270.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    const/high16 v1, 0x44b40000    # 1440.0f

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    return p0
.end method
