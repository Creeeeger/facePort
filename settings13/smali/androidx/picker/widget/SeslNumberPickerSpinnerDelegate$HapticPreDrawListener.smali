.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HapticPreDrawListener"
.end annotation


# instance fields
.field public mSkipHapticCalls:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1558
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;)V
    .locals 0

    .line 1557
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    const/4 v0, 0x0

    .line 1562
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    const/4 p0, 0x1

    return p0
.end method
