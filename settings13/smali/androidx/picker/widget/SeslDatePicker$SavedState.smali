.class Landroidx/picker/widget/SeslDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
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
            "Landroidx/picker/widget/SeslDatePicker$SavedState;",
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

    .line 1634
    new-instance v0, Landroidx/picker/widget/SeslDatePicker$SavedState$1;

    invoke-direct {v0}, Landroidx/picker/widget/SeslDatePicker$SavedState$1;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1594
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    .line 1596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    .line 1597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    .line 1598
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMinDate:J

    .line 1599
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMaxDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/picker/widget/SeslDatePicker$1;)V
    .locals 0

    .line 1570
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJ)V
    .locals 0

    .line 1582
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1583
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    .line 1584
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    .line 1585
    iput p4, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    .line 1586
    iput-wide p5, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMinDate:J

    .line 1587
    iput-wide p7, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMaxDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJLandroidx/picker/widget/SeslDatePicker$1;)V
    .locals 0

    .line 1570
    invoke-direct/range {p0 .. p8}, Landroidx/picker/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-void
.end method


# virtual methods
.method getMaxDate()J
    .locals 2

    .line 1629
    iget-wide v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method getMinDate()J
    .locals 2

    .line 1625
    iget-wide v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMinDate:J

    return-wide v0
.end method

.method getSelectedDay()I
    .locals 0

    .line 1613
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    return p0
.end method

.method getSelectedMonth()I
    .locals 0

    .line 1617
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    return p0
.end method

.method getSelectedYear()I
    .locals 0

    .line 1621
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1604
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1605
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    iget-wide v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1609
    iget-wide v0, p0, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
