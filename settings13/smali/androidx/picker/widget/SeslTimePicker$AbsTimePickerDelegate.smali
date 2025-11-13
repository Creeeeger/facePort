.class abstract Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;
.super Ljava/lang/Object;
.source "SeslTimePicker.java"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbsTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field mCurrentLocale:Ljava/util/Locale;

.field mDelegator:Landroidx/picker/widget/SeslTimePicker;

.field mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

.field mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;)V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    .line 524
    iput-object p2, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 532
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method
