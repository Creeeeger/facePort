.class public final Lcom/google/android/material/chip/SeslExpansionButton$1;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/SeslExpansionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslExpansionButton;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpansionButton$1;->this$0:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpansionButton$1;->this$0:Lcom/google/android/material/chip/SeslExpansionButton;

    iget-boolean v1, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpansionButton$1;->this$0:Lcom/google/android/material/chip/SeslExpansionButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
