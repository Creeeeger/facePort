.class abstract Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinner.java"

# interfaces
.implements Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbsDatePickerDelegate"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;)V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    .line 856
    iput-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    return-void
.end method
