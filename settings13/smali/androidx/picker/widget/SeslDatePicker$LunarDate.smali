.class Landroidx/picker/widget/SeslDatePicker$LunarDate;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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

    .line 3054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    .line 3055
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    const/4 v0, 0x1

    .line 3056
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    .line 3057
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->day:I

    const/4 v0, 0x0

    .line 3058
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method


# virtual methods
.method public set(IIIZ)V
    .locals 0

    .line 3069
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    .line 3070
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    .line 3071
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->day:I

    .line 3072
    iput-boolean p4, p0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method
