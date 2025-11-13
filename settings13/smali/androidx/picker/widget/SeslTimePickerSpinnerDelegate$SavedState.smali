.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SeslTimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 909
    new-instance v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState$1;

    invoke-direct {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 888
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;)V
    .locals 0

    .line 877
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 882
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 883
    iput p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    .line 884
    iput p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;)V
    .locals 0

    .line 877
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 0

    .line 894
    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    return p0
.end method

.method public getMinute()I
    .locals 0

    .line 898
    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 903
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 904
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
