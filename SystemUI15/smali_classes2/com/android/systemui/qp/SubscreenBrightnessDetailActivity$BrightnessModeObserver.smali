.class public final Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCr:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "sub_screen_brightness_mode"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method
