.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 3083
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3087
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 3088
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 3111
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 3112
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 3113
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 3114
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 3118
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 3119
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 3120
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 3121
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    .line 3094
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    .line 3095
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 3097
    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 3098
    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 3099
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3100
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3101
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3502(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 3102
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 3104
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3105
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3702(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 3106
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v1, v2, v2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 8

    .line 3126
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    .line 3127
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    .line 3129
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 3143
    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 3153
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3154
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    .line 3155
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    .line 3154
    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3157
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3780(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Z

    .line 3158
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v1, v4, v4, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 3145
    :cond_3
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3146
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    .line 3147
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v6, v3

    .line 3146
    invoke-virtual {v2, p0, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3149
    :cond_4
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3580(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Z

    .line 3150
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 3131
    :cond_5
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    if-eq v2, v5, :cond_7

    if-eq v2, v3, :cond_6

    goto :goto_0

    .line 3137
    :cond_6
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3702(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 3138
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v1, v4, v4, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 3133
    :cond_7
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3502(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 3134
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method
