.class Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SeslSpinningDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;
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
            "Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1678
    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState$1;

    invoke-direct {v0}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState$1;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1638
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedYear:I

    .line 1640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedMonth:I

    .line 1641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedDay:I

    .line 1642
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMinDate:J

    .line 1643
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMaxDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/picker/widget/SeslSpinningDatePicker$1;)V
    .locals 0

    .line 1615
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJI)V
    .locals 0

    .line 1626
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1627
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedYear:I

    .line 1628
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedMonth:I

    .line 1629
    iput p4, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedDay:I

    .line 1630
    iput-wide p5, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMinDate:J

    .line 1631
    iput-wide p7, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMaxDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJILandroidx/picker/widget/SeslSpinningDatePicker$1;)V
    .locals 0

    .line 1615
    invoke-direct/range {p0 .. p9}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJI)V

    return-void
.end method


# virtual methods
.method public getMaxDate()J
    .locals 2

    .line 1673
    iget-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1669
    iget-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 0

    .line 1657
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedDay:I

    return p0
.end method

.method public getSelectedMonth()I
    .locals 0

    .line 1661
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedMonth:I

    return p0
.end method

.method public getSelectedYear()I
    .locals 0

    .line 1665
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedYear:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1648
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1649
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    iget-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1653
    iget-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
