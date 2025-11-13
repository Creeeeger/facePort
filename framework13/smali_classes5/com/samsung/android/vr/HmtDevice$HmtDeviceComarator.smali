.class public Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;
.super Ljava/lang/Object;
.source "HmtDevice.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/HmtDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmtDeviceComarator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/vr/HmtDevice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/samsung/android/vr/HmtDevice;Lcom/samsung/android/vr/HmtDevice;)I
    .locals 2
    .param p1, "object1"    # Lcom/samsung/android/vr/HmtDevice;
    .param p2, "object2"    # Lcom/samsung/android/vr/HmtDevice;

    .line 558
    iget v0, p1, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    iget v1, p2, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    if-le v0, v1, :cond_0

    .line 559
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 556
    check-cast p1, Lcom/samsung/android/vr/HmtDevice;

    check-cast p2, Lcom/samsung/android/vr/HmtDevice;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;->compare(Lcom/samsung/android/vr/HmtDevice;Lcom/samsung/android/vr/HmtDevice;)I

    move-result p1

    return p1
.end method
