.class public final Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

.field public final synthetic val$listener:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->val$listener:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;

    return-void
.end method


# virtual methods
.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->val$listener:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;

    iget-object v1, v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    const/4 v2, 0x0

    iget-object v1, v1, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aget p0, p0, p1

    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    iget-object v0, v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    iget-object v1, v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    iget-object p1, v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1, p0}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
