.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeBitmapUse(Landroid/graphics/Bitmap;Ljava/util/HashSet;)I
    .locals 3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method

.method public static computeBundleSize(Landroid/os/Bundle;)I
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBitmapUse(Landroid/graphics/Bitmap;Ljava/util/HashSet;)I

    move-result p0

    goto :goto_4

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBitmapUse(Landroid/graphics/Bitmap;Ljava/util/HashSet;)I

    move-result p0

    goto :goto_4

    :cond_4
    :goto_2
    const/4 v1, 0x0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result p0

    goto :goto_4

    :cond_7
    :goto_3
    move p0, v1

    :goto_4
    return p0
.end method

.method public static computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBitmapUse(Landroid/graphics/Bitmap;Ljava/util/HashSet;)I

    move-result p0

    goto :goto_1

    :cond_1
    instance-of p1, p0, Landroid/graphics/drawable/Icon;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result p0

    goto :goto_1

    :cond_2
    instance-of p1, p0, Landroid/app/Person;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/app/Person;

    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
