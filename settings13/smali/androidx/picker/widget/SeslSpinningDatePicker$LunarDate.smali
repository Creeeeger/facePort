.class Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LunarDate"
.end annotation


# instance fields
.field public day:I

.field isLeapMonth:Z

.field public month:I

.field public year:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    .line 2976
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    const/4 v0, 0x1

    .line 2977
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    .line 2978
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    const/4 v0, 0x0

    .line 2979
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method


# virtual methods
.method public set(IIIZ)V
    .locals 0

    .line 2990
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    .line 2991
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    .line 2992
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    .line 2993
    iput-boolean p4, p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method
