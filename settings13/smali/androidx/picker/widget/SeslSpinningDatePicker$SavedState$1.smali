.class Landroidx/picker/widget/SeslSpinningDatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;
    .locals 1

    .line 1681
    new-instance p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;-><init>(Landroid/os/Parcel;Landroidx/picker/widget/SeslSpinningDatePicker$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1678
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;
    .locals 0

    .line 1686
    new-array p0, p1, [Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1678
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState$1;->newArray(I)[Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method
