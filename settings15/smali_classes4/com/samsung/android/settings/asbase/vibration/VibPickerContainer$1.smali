.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedTab:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
