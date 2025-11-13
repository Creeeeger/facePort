.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState$1;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;
    .locals 1

    .line 912
    new-instance p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcel;Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 909
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;
    .locals 0

    .line 917
    new-array p0, p1, [Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 909
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState$1;->newArray(I)[Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;

    move-result-object p0

    return-object p0
.end method
