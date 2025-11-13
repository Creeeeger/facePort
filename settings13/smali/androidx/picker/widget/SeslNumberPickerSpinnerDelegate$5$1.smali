.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

.field final synthetic val$forwardDistance:I


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;I)V
    .locals 0

    .line 2245
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->val$forwardDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
