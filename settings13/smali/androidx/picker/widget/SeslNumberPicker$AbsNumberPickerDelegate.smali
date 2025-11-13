.class abstract Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;
.super Ljava/lang/Object;
.source "SeslNumberPicker.java"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbsNumberPickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDelegator:Landroidx/picker/widget/SeslNumberPicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    .line 1052
    iput-object p2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    return-void
.end method
